class Header < ActiveRecord::Base

	has_many :h_params
	belongs_to :request

end
