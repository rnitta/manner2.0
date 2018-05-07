# frozen_string_literal: true
# == Schema Information
#
# Table name: manners
#
#  id              :integer          not null, primary key
#  user_id         :integer
#  subject_id      :integer
#  title           :string           not null
#  star            :integer          default(0), not null
#  pv              :integer          default(0), not null
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  favorites_count :integer          default(0), not null
#

class Manner < ApplicationRecord
  belongs_to :user
  belongs_to :subject
  counter_culture :subject
  has_many :favorites
  validates :title, presence: true, length: { maximum: 255 }, uniqueness: { scope: :subject_id }
  validates :subject_id, presence: true
  validates :user_id, presence: true
end
