require 'spec_helper'

describe Body do
  
	describe "Associations" do

		it { should have_many(:b_params) }
		it { should belong_to(:request) }

	end

end
