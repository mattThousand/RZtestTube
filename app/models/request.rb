class Request < ActiveRecord::Base

	has_one :body
	has_one :header
	belongs_to :application


	def passing

		# uri = self.url

		# h_params = {}
		# n_params = {}

		# if request.req_type == 'post'

		# 	self.body.h_params.each do |p|
		# 		params[p.name] = p.value
		# 	end
		# 	return http_post(self.url, params)

		# else

		# 	self.header.h_params.each do |p|
		# 		h_params[p.name] = p.value
		# 	end

		# 	return http_get(self.url, params)
		# end

		return false

	end

	private

		def http_post(url, params)
			return Net::HTTP.post_form(url, params)
		end

		def http_get(url, params)
	    return Net::HTTP.get(url, "".concat(params.collect { |k,v| "#{k}=#{CGI::escape(v.to_s)}" }.join('&'))) if not params.nil?
		end

end
