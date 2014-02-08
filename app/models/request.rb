class Request < ActiveRecord::Base

	has_one :header
	belongs_to :application

	validates_presence_of :headers,
		:name,
		:url,
		:req_type

	validate :json_format



	def passing

		uri = URI.parse(self.url)

		http = Net::HTTP.new(uri.host, uri.port)

		http.use_ssl = true if uri.scheme == "https"


		if self.req_type == 'post'
			data = parse_body(self.body)
			headers = JSON.parse(self.headers)

			response, data = http.post(uri.path, data, headers)
		elsif req_type == 'get' 
			headers = JSON.parse(self.headers)
			response, data = http.get(uri.path, headers)
		end


		if response.class < Net::HTTPSuccess
			return true
		else
			self.response_code = response.code.to_s + ": " + response.message
			return false
		end

	end

	private

		def parse_body(body)

			output = []

			body = JSON.parse(body)

			body.each do |k,v|
				output.push(k.to_s + "=" + v.to_s)
			end

			output.join("&")

		end

	  def json_format
	  	if self.req_type == 'post'
		  	begin
		      !!JSON.parse(headers)
		    rescue
		      errors[:base] << "Header and body must both be in json format"
		    end
		   else
		   	begin
		      !!JSON.parse(headers)
		      !!JSON.parse(body)
		    rescue
		      errors[:base] << "Header and body must both be in json format"
		    end
		   end
	  end

end
