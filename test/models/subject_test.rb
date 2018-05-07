# == Schema Information
#
# Table name: subjects
#
#  id            :integer          not null, primary key
#  user_id       :integer
#  category_id   :integer
#  title         :string           default(""), not null
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  manners_count :integer          default(0), not null
#

require 'test_helper'

class SubjectTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
