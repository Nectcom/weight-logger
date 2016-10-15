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

class Weight < ActiveRecord::Base
    belongs_to :user
end
