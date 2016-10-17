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

require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
