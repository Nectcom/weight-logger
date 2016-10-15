# == Schema Information
#
# Table name: weights
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  weight     :integer
#  date       :datetime
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :weight do
    user_id 1
    weight 1
    date "2016-10-15 16:05:49"
  end
end
