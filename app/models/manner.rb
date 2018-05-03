# frozen_string_literal: true
# == Schema Information
#
# Table name: manners
#
#  id          :integer          not null, primary key
#  user_id     :integer
#  title       :string           not null
#  star        :integer          default(0), not null
#  pv          :integer          default(0), not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Manner < ApplicationRecord
  belongs_to :user
  belongs_to :subject
  validates :title, presence: true, length: { maximum: 255 }
  validates :category_id, presence: true
  validates :user_id, presence: true
end
