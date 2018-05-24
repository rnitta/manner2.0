require 'test_helper'

class UserRankingDecoratorTest < ActiveSupport::TestCase
  def setup
    @user_ranking = UserRanking.new.extend UserRankingDecorator
  end

  # test "the truth" do
  #   assert true
  # end
end
