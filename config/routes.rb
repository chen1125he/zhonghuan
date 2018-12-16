require 'sidekiq/web'

Rails.application.routes.draw do
  root to: 'visitors#index'
end
