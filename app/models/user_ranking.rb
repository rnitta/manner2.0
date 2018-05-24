# frozen_string_literal: true

# == Schema Information
#
# Table name: user_rankings
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  rank       :integer
#  value      :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class UserRanking < ApplicationRecord
  belongs_to :user

  scope :top5, lambda {
    current_scope.order('value desc').limit(5).includes(:user)
  }
end
