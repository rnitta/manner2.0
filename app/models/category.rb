# frozen_string_literal:true
class Category < ApplicationRecord
  belongs_to :manner
  validates :name, presence: true, length: { maximum: 255 }
  validates :friendly_id, presence: true, length: { maximum: 255 }
end
