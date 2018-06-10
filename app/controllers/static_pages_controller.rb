# frozen_string_literal: true
class StaticPagesController < ApplicationController
  def sitemap
  end

  def top
    @manners = Manner.page(params[:page]).per(10).includes(subject: :user)
  end
end
