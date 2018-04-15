# frozen_string_literal: true
Rails.application.routes.draw do
  resources :users, only: %i[new create show]
  resources :manners, only: %i[new create show edit update destroy index]
  get '/login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
end
