# frozen_string_literal: true
class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end

  private

  def user_params
    params.require(:user).permit(:name, :login_id, :email, :password, :password_confirmation)
  end
end
