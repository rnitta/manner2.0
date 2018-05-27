# frozen_string_literal: true
class StaticPagesController < ApplicationController
  def sitemap
  end

  def top
    @manners = Manner.all.order('created_at desc').limit(10).includes(subject: :user)
  end
end
