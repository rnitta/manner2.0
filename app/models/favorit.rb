class Favorit < ApplicationRecord
  belongs_to :manner
  belongs_to :user
  validates :manner_id, presence: true
  validates :user_id, presence: true
end
