Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  namespace :api do
    namespace :admin do
      post 'login', to: 'sessions#create'
      delete 'logout', to: 'sessions#destroy', as: :logout

      resources :pages, only: [:index, :show, :create, :update, :destroy]
      resources :sliders, only: [:index, :show, :create, :update, :destroy]
      resources :informations, only: [:index, :show, :create, :update, :destroy]
    end
  end
end
