# frozen_string_literal:true

# == Schema Information
#
# Table name: categories
#
#  id          :integer          not null, primary key
#  name        :string           not null
#  friendly_id :string           not null
#  count       :integer          default(0), not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Category < ApplicationRecord
  has_many :subjects
  validates :name, presence: true, length: { maximum: 255 }
  validates :friendly_id, presence: true, length: { maximum: 255 }
end
