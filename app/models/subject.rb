# frozen_string_literal: true

# == Schema Information
#
# Table name: subjects
#
#  id          :integer          not null, primary key
#  user_id     :integer
#  category_id :integer
#  title       :string           default(""), not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Subject < ApplicationRecord
  belongs_to :user
  belongs_to :category
  has_many :manners
  validates :title, uniqueness: { scope: :category_id }
end
