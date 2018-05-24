# == Schema Information
#
# Table name: subject_rankings
#
#  id         :integer          not null, primary key
#  subject_id :integer
#  rank       :integer
#  value      :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class SubjectRankingTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
