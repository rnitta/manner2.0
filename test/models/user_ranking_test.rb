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

require 'test_helper'

class UserRankingTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
