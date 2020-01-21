require 'rails_helper'

RSpec.describe RequestService, type: :service do

	context "#getAiredDate" do
		it "returns a string" do
			req = RequestService.new(1)
			expect(req.getAiredDate).to be_an_instance_of(String)
		end
	end
end
