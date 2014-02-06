require 'spec_helper'

describe Header do
  
  	describe "Associations" do

		it { should have_many(:h_params) }
		it { should belong_to(:request) }

	end

end
