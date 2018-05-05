# frozen_string_literal: true
class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end
  def mypage
    # N+1用にviewで呼ばずに読んでおく
    @manners = Manner.where(user_id: current_user.id).includes(:subject)
    @subjects = Subject.where(user_id: current_user.id).includes(:manners)
  end

  private

  def user_params
    params.require(:user).permit(:name, :login_id, :email, :password, :password_confirmation)
  end
end
