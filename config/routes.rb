require 'sidekiq/web'

Rails.application.routes.draw do
  namespace :api do
    namespace :admin do
      post 'login', to: 'sessions#create'
      get 'iflogin', to: 'sessions#show'
      delete 'logout', to: 'sessions#destroy'

      resources :users
      resources :pages, only: [:index, :show, :create, :update, :destroy]
      resources :sliders, only: [:index, :show, :create, :update, :destroy]
      resources :informations, only: [:index, :show, :create, :update, :destroy]
      resources :buildings, only: [:index, :show, :create, :update, :destroy]

      resources :advisers, only: [:index, :show, :create, :update, :destroy]
      resources :images, only: [:create, :update]
      resource :weapp_settings, only: [:update, :show]

      resources :sessions, only: [:create]

      resources :export_users, only: [:create]
    end

    resources :pages, only: [:index, :show]
    resources :sliders, only: [:index, :show]
    resources :informations, only: [:index, :show]
    resources :buildings, only: [:index, :show] do
      resources :building_visitors, only: [:index], controller: 'building_visitors'
    end
    resources :advisers, only: [:index, :show]
    resources :sessions, only: [:create]
  end
end
