require 'rails_helper'

RSpec.describe User, type: :model do
    context "User be valid:" do
        it "all attributes are OK" do
            response = User.new(
                email: Faker::Internet.email,
                password: "123456",
                password_confirmation: "123456"
            )
            expect(response).to be_valid
        end
    end

    context "User be not valid:" do
        it "blank email" do
            response = User.new(
                email: nil,
                password: "123456",
                password_confirmation: "123456"
            )
            expect(response).to_not be_valid
        end
        it "wrong paswword confirmation" do
            response = User.new(
                email: Faker::Internet.email,
                password: "123456",
                password_confirmation: "123455"
            )
            expect(response).to_not be_valid
        end
    end
end