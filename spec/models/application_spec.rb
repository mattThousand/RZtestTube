require 'spec_helper'

describe Application do
	it { should have_many(:requests) }
end
