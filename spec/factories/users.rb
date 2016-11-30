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

FactoryGirl.define do
    factory :user do
        name "nect"
        password "password"
        password_confirmation "password"
        height 165
    end

    factory :invaild_user, class: User do
        name ""
        password "short"
        password_confirmation "short"
        height 165
    end
end
