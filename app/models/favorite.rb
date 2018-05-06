# frozen_string_literal: true

# == Schema Information
#
# Table name: favorites
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  manner_id  :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Favorite < ApplicationRecord
  belongs_to :manner
  counter_culture :manner
  belongs_to :user
  validates :manner_id, presence: true, uniqueness: { scope: :user_id }
  validates :user_id, presence: true
end
