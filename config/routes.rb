# frozen_string_literal: true
Rails.application.routes.draw do
  root to: 'mock#top'
  resources :users, only: %i[show]
  resources :categories, only: %i[new create show edit update destroy index]
  resources :favorites, only: %i[create destroy]
  resources :subjects, only: %i[new create show edit update destroy index] do
    resources :manners, only: %i[new create show edit update destroy index]
  end
  devise_for :users, controllers:  {
    # deviseのコントローラをオーバーライドしてるやつを呼ぶ設定
    registrations: 'users/registrations',
    sessions: 'users/sessions',
    confirmations: 'users/confirmations'
  }
  get 'mypage', to: 'users#mypage'
  get 'ogp', to: 'ogp#tw_subject'
  get 'sitemap', to: 'static_pages#sitemap'
  get 'mock/top', to: 'mock#top'
end
