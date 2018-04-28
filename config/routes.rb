# frozen_string_literal: true
Rails.application.routes.draw do
  devise_for :users
  resources :users, only: %i[new create show]
  resources :manners, only: %i[new create show edit update destroy index]
  root to: 'mock#top'
  get 'mock/top', to: 'mock#top'
  get '/login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
end
