# frozen_string_literal: true
class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @manners = Manner.where(user_id: @user.id).order('id desc').includes(:subject).take(5)
    @subjects = Subject.where(user_id: @user.id).order('id desc').take(5)
    # N+1用にこれやってるけど、mannerがid順にソートされて微妙かも（本来はmannerをfavoriteのid順で並べたい）
    @favorites = @user.favorites.order('id desc').includes([:manner, manner: :subject]).take(5)
    # どっかで Manner.counter_culture_fix_countsとFavorite.counter_culture_fix_counts　して定期的に整合性をもたせる
  end

  def manners
    @user = User.find(params[:user_id])
    @manners = @user.manners.order('id desc').page(params[:page]).includes(:subject)
  end

  def subjects
    @user = User.find(params[:user_id])
    @subjects = @user.subjects.order('id desc').page(params[:page])
  end

  def favorites
    @user = User.find(params[:user_id])
    @favorites = @user.favorites.order('id desc').page(params[:page]).includes([:manner, manner: :subject])
  end

  private

  def user_params
    params.require(:user).permit(:name, :login_id, :email, :password, :password_confirmation)
  end
end
