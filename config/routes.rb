# frozen_string_literal: true
Rails.application.routes.draw do
  root to: 'mock#top'
  devise_for :users, controllers:  {
    # deviseのコントローラをオーバーライドしてるやつを呼ぶ設定
    registrations: 'users/registrations',
    sessions: 'users/sessions',
    confirmations: 'users/confirmations'
  }
  get 'mypage', to: 'users#mypage'
  resources :users, only: %i[show]
  resources :subjects, only: %i[new create show edit update destroy index] do
    resources :manners, only: %i[new create show edit update destroy index]
  end
  get 'ogp', to: 'ogp#tw_subject'
  resources :categories, only: %i[new create show edit update destroy index]
  get 'mock/top', to: 'mock#top'
  get 'sitemap', to: 'static_pages#sitemap'
end
