# frozen_string_literal: true
class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @manners = Manner.where(user_id: @user.id).order('id desc').includes(:subject)
    @subjects = Subject.where(user_id: @user.id).order('id desc')
    # N+1用にこれやってるけど、mannerがid順にソートされて微妙かも（本来はmannerをfavoriteのid順で並べたい）
    @favorites = @user.favorites.order('id desc').includes([:manner, manner: :subject])
    # どっかで Manner.counter_culture_fix_countsとFavorite.counter_culture_fix_counts　して定期的に整合性をもたせる
  end

  private

  def user_params
    params.require(:user).permit(:name, :login_id, :email, :password, :password_confirmation)
  end
end
