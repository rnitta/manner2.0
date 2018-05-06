# frozen_string_literal: true
class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @manners = Manner.where(user_id: @user.id).includes(:subject).order('id desc')
    @subjects = Subject.where(user_id: @user.id).includes(:manners).order('id desc')
    # N+1用にこれやってるけど、mannerがid順にソートされて微妙かも（本来はmannerをfavoriteのid順で並べたい）
    @favorites = @user.favorites.includes([:manner, manner: :subject]).order('id desc')
  end

  private

  def user_params
    params.require(:user).permit(:name, :login_id, :email, :password, :password_confirmation)
  end
end
