# frozen_string_literal: true
class StaticPagesController < ApplicationController
  def sitemap
  end

  def top
    @manners = Manner.order('created_at desc').page(params[:page]).per(10).includes(subject: :user)
  end
end
