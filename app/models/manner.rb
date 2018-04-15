class Manner < ApplicationRecord
  belongs_to :user
  has_one :category
  validates :title, presence: true, length: { maximum: 255 }
  validates :description, presence: true
  validates :category_id, presence: true
  validates :user_id, presence: true
end
