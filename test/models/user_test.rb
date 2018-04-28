# == Schema Information
#
# Table name: users
#
#  id                     :integer          not null, primary key
#  login_id               :string           not null
#  name                   :string           not null
#  register_ip            :string
#  login_ip               :string
#  exp                    :integer          default(0), not null
#  rank                   :integer          default(0), not null
#  lv                     :integer          default(0), not null
#  password_digest        :string           not null
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  reset_password_token   :string
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer          default(0), not null
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :string
#  last_sign_in_ip        :string
#  confirmation_token     :string
#  confirmed_at           :datetime
#  confirmation_sent_at   :datetime
#  unconfirmed_email      :string
#

require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
