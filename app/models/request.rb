class Request < ActiveRecord::Base

	has_one :body
	has_one :header
	belongs_to :application

end
