# == Schema Information
#
# Table name: favorits
#
#  id         :integer          not null, primary key
#  manner_id  :integer
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Favorit < ApplicationRecord
  belongs_to :manner
  belongs_to :user
  validates :manner_id, presence: true
  validates :user_id, presence: true
end
