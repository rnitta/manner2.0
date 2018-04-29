# frozen_string_literal: true
Rails.application.routes.draw do
  root to: 'mock#top'
  devise_for :users, controllers:  {
    # deviseのコントローラをオーバーライドしてるやつ
    registrations: 'users/registrations'
  }
  resources :users, only: %i[show]
  get 'users/init', to: 'users#init'
  resources :manners, only: %i[new create show edit update destroy index]
  get 'mock/top', to: 'mock#top'
end
