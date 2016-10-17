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

class User < ActiveRecord::Base
    has_many :weights
    validates :name, presence: true, uniqueness: true
    
    validates :password, presence: true, length: {minimum: 6}
    
    validates :height, numericality: {only_integer: true}
    
    has_secure_password
end
