# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  name            :string
#  height          :integer
#  login_id        :integer
#  remember_token  :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  password_digest :string
#

require "spec_helper"

describe User do
    before do
        @user = build(:user)
    end
    
    it "is valid with name, password and height" do
        expect(@user).to be_valid
    end
    
    it "name should be present" do
        @user.name = ""
        expect(@user).not_to be_valid
    end
    
    it "height should be integer" do
        @user.height = "qa"
        expect(@user).not_to be_valid
    end
    
    it "name is unique" do
        dump_user = @user.dup
        @user.save
        
        expect(dump_user).not_to be_valid
    end
    
    it "password should be present" do
        @user.password = @user.password_confirmation = " " * 6
        
        expect(@user).not_to be_valid
    end
    
    it "password is longer than 6" do
        @user.password = @user.password_confirmation = "a" * 5
        
        expect(@user).not_to be_valid
    end
end
