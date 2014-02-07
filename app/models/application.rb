class Application < ActiveRecord::Base

	has_many :requests


	def successful_requests_count
		get_count
	end

	def failing_requests_count
		self.requests.count - self.successful_requests_count
	end


	private

	def get_count
		output = 0
		self.requests.each do |r|
			output +=1 if r.passing
		end
		output
	end

end
