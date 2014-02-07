require 'spec_helper'

describe Request do
  
	describe "Associations" do

		it { should belong_to(:application) }
		it { should have_one(:body) }
		it { should have_one(:header) }

	end

end
