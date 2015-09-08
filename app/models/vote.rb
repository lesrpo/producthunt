# == Schema Information
#
# Table name: votes
#
#  id         :integer          not null, primary key
#  product_id :integer
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Vote < ActiveRecord::Base
  belongs_to :product
  belongs_to :user
end
