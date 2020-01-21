require 'rails_helper'

RSpec.describe AiredDatesController, type: :controller do

	context "GET #show/1" do
		it "returns a successful response" do
			get :show, params: {id: 1}
			expect(response).to have_http_status(:success)
		end
	end

	context "GET #show/1" do
		it "returns a specific json" do
			get :show, params: {id: 1}
			parsed_response = JSON.parse(response.body)
			expect(parsed_response.keys).to contain_exactly('aired_date')
		end
	end
end
