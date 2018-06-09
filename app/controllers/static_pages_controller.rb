# frozen_string_literal: true
class StaticPagesController < ApplicationController
  def sitemap
  end

  def top
    @manners = Manner.includes(subject: :user)
  end
end
