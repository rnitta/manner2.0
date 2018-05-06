# frozen_string_literal: true
class FavoritesController < ApplicationController
  def create
    favorite = Favorite.new(user_id: current_user.id, manner_id: params[:manner_id])
    if favorite.save
      render json: { done: true }
    else
      render json: { done: false }
    end
  end
  def destroy
    favorite = Favorite.find_by(user_id: current_user.id, manner_id: params[:id])
    if favorite.destroy
      render json: { done: true }
    else
      render json: { done: false }
    end
  end

  private

  def favorite_params
    params.require(:favorite).permit(:manner_id)
  end
end
