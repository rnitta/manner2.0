# frozen_string_literal: true
class CategoriesController < ApplicationController
  before_action :set_category, only: %i[edit update destroy]
  before_action :admin?, only: %i[new create edit update destroy]
  def index
    @categories = Category.all
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)
    if @category.save
      redirect_to @category
    else
      render :new
    end
  end

  def show
    @category = Category.find(params[:id])
    @subjects = @category.subjects.page(params[:page]).includes(:manners, :user).order('manners.favorites_count desc')
  end

  def edit
  end

  def update
    if @category.update(category_params)
      redirect_to @category
    else
      render :edit
    end
  end

  def destroy
    @category.destroy
    redirect_to categories_path
  end

  private

  def set_category
    @category = Category.find(params[:id])
  end

  def category_params
    params.require(:category).permit(:name, :friendly_id)
  end
end
