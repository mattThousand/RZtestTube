class Request < ActiveRecord::Base

	has_one :header
	belongs_to :application


	def passing

		h_params = {}

		uri = URI.parse(self.url)

		if self.req_type == 'post'

			http = Net::HTTP.new(uri.host, uri.port)
			http.use_ssl = true
			request = Net::HTTP::Post.new(uri.path)
			request.body = JSON.parse(self.body).to_json if self.body
			request["Content-Type"] = "application/json"

			if self.header 
				self.header.h_params.each do |p|
					request[p.name] = p.value
				end
			end

			# return http.request(request) == 200
			return http.request(request)

		else

			# if self.header
			# 	self.header.h_params.each do |p|
			# 		h_params[p.name] = p.value
			# 	end
			# end

			# return http_get(uri.path, h_params)
			return true
		end

		# if self.application.name != "Sunsprite-Kinvey"
		# 	return false
		# else
		# 	return true
		# end

	end

	private

		def http_post(url, params)
			response = Net::HTTP.post(url, params)
			if response.class < Net::HTTPSuccess
				return true
			else
				self.response_code = response.code.to_s
				return false
			end
		end

		def http_get(url, h_params)
	    response = Net::HTTP.get(url)
	    if response.class < Net::HTTPSuccess
				return true
			else
				self.response_code = response.code.to_s
				return false
			end
		end

end
