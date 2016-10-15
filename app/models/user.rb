# == Schema Information
#
# Table name: users
#
#  id             :integer          not null, primary key
#  name           :string
#  password       :string
#  height         :integer
#  login_id       :integer
#  remember_token :string
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

class User < ActiveRecord::Base
    has_many :weights
end
