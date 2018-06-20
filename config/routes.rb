# frozen_string_literal: true
Rails.application.routes.draw do
  root to: 'static_pages#top'
  resources :categories, only: %i[new create show edit update destroy index]
  resources :favorites, only: %i[create destroy]
  resources :subjects, only: %i[new create show destroy index] do
    resources :manners, only: %i[new create destroy index]
  end
  devise_for :users, controllers:  {
    # deviseのコントローラをオーバーライドしてるやつを呼ぶ設定
    registrations: 'users/registrations',
    sessions: 'users/sessions',
    confirmations: 'users/confirmations'
  }
  # ↓usersのルーティングはdeviseより下に置かないと/users/editとかがパス被ってエラー出る
  resources :users, only: %i[show] do
    get 'manners', to: 'users#manners'
    get 'subjects', to: 'users#subjects'
    get 'favorites', to: 'users#favorites'
  end
  resources :ogp, only: %i[show]
  resources :inquiries, only: %i[index new create]
  get 'ogp', to: 'ogp#tw_subject'
  get 'sitemap', to: 'static_pages#sitemap'
  get 'mock/top', to: 'mock#top'

  get '*path', controller: 'application', action: 'render_404'
end
