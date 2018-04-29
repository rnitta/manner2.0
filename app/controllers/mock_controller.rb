# frozen_string_literal: true
class MockController < ApplicationController
  before_action :urge_complete_registration
  def top
  end
end
