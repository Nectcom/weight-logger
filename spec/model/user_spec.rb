require "spec_helper"

describe User do
    it "is valid with name, password and height" do
        user = User.new(
                name: "nect",
                password: "test",
                height: 165)
        expect(user).to be_valid
    end
end
