require 'sidekiq/web'

Rails.application.routes.draw do
  namespace :api do
    namespace :admin do
      post 'login', to: 'sessions#create'
      get 'iflogin', to: 'sessions#show'
      delete 'logout', to: 'sessions#destroy'

      resources :pages, only: [:index, :show, :create, :update, :destroy]
      resources :sliders, only: [:index, :show, :create, :update, :destroy]
      resources :informations, only: [:index, :show, :create, :update, :destroy]
      resources :buildings, only: [:index, :show, :create, :update, :destroy] do
        resource :building_visitors, only: [:destroy]
        resource :building_user_visitors, only: [:destroy]
      end

      resources :advisers, only: [:index, :show, :create, :update, :destroy]
      resources :images, only: [:create, :update]
      resource :weapp_settings, only: [:update, :show]

      resources :sessions, only: [:create]

      resources :export_users, only: [:index]
      resources :users, only: [:index]
    end

    resources :pages, only: [:index, :show]
    resources :sliders, only: [:index, :show]
    resources :informations, only: [:index, :show]
    resources :buildings, only: [:index, :show] do
      resources :building_visitors, only: [:index], controller: 'building_visitors' do
        collection do
          get :me, action: :show
        end
      end
    end
    resource :current_user, only: [:show, :update]
    resources :advisers, only: [:index, :show]
    resources :sessions, only: [:create]
    resource :weapp_settings, only: [:show]
    resource :fetch_user_wechat_mobile, only: [:create]
  end
end
