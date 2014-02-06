class Body < ActiveRecord::Base

	belongs_to :request
	has_many :b_params

end
