require 'rails_helper'

RSpec.describe User, type: :request do
    let!(:user) { User.create(
        email: Faker::Internet.email,
        password: "123456",
        password_confirmation: "123456"
    ) }
    let(:user_id) { user.id }

    before { host! "localhost:3000/api" }

    before do
        headers = { "Accept" => "application/json" }
    end

    context "GET/" do
        it "index" do
            get "/users", params: {}, headers: headers
            expect(response).to have_http_status(200)
        end
        it "show user" do
            get "/users/#{user_id}", params: {}, headers: headers
            expect(response).to have_http_status(200)
            puts(response.body)
        end
        it "user not found" do
            get "/users/#{100000000}", params: {}, headers: headers
            expect(response).to have_http_status(404)
            puts(response.body)
        end
    end

end