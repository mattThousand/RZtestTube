class Request < ActiveRecord::Base

	has_one :body
	has_one :header

end
