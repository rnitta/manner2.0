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

class SubjectRanking < ApplicationRecord
belongs_to :subject
scope :top5, lambda {
  current_scope.order('value desc').limit(5).includes(:subject)
}
end
