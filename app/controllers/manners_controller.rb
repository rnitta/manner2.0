# frozen_string_literal: true
class MannersController < ApplicationController
  # 権限設定やる
  before_action :authenticate_user!, only: %i[new create destroy]
  before_action :set_manner, only: %i[show destroy]
  def index
  end

  def new
    @subject = Subject.find(params[:subject_id])
    @manner = Manner.new
  end

  def create
    @manner = Manner.new(manner_params)
    @manner.user_id = current_user.id
    @manner.category_id = params[:category_id]
    if @manner.save
      redirect_to @manner.subject
    else
      render :new
    end
  end

  def show
  end

  def destroy
    # 削除後、お題ページにリダイレクト
    subject = @manner.subject
    @manner.destroy
    redirect_to subject
  end

  def edit
  end

  private

  def manner_params
    params.require(:manner).permit(:title)
  end

  def set_manner
    @manner = Manner.find(params[:id])
  end
end
