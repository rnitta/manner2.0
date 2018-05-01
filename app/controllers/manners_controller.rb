# frozen_string_literal: true
class MannersController < ApplicationController
  def index
  end

  def new
  end

  def edit
  end

  private

  def set_manner
    @manner = Manner.find(params[:id])
  end
end
