# frozen_string_literal: true
class InquiriesController < ApplicationController
  before_action :admin?, only: %i[show]
  before_action :authenticate_user!, only: %i[new create]

  def new
    @inquiry = Inquiry.new
  end

  def create
    @inquiry = Inquiry.new(inquiry_params)
    @inquiry.user_id = current_user.id
    if @inquiry.save
      render :thanks
    else
      render :new
    end
  end

  def index
    @inquiries = Inquiry.all
  end

  private

  def inquiry_params
    params.require(:inquiry).permit(:title, :content)
  end
end
