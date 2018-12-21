require 'sidekiq/web'

Rails.application.routes.draw do
  namespace :api do
    namespace :admin do
      post 'login', to: 'sessions#create'
      get 'iflogin', to: 'sessions#show'
      delete 'logout', to: 'sessions#destroy', as: :logout

      resources :pages, only: [:index, :show, :create, :update, :destroy]
      resources :sliders, only: [:index, :show, :create, :update, :destroy]
      resources :informations, only: [:index, :show, :create, :update, :destroy]
    end

    resources :pages, only: [:index, :show]
    resources :sliders, only: [:index, :show]
    resources :informations, only: [:index, :show]
  end
end
