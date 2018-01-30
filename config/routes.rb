# require 'sidekiq/web'
# require 'resque/server'

Rails.application.routes.draw do

  # ActiveAdmin.routes(self)
  # match "/delayed_job" => DelayedJobWeb, :anchor => false, :via => [:get, :post]
  # mount Sidekiq::Web => '/sidekiq'
  # mount Resque::Server.new, at: 'resque'
  # mount Dashing::Engine, at: Dashing.config.engine_path
  # #mount Thredded::Engine => '/forum'
  # mount Thredded::Workgroup::Engine => '/forum'
  # mount RailsAdmin::Engine => '/rails_admin', as: 'rails_admin'

  get "/pages/*id" => 'pages#show', as: :page, format: false
  devise_for :users
  mount_ember_app :frontend, to: '/frontend'
  root "pages#index"

  resources :concepts, only: [:index, :show] do 
    collection do 
      get :currencies
    end
  end
  
  resources :currency_maxchanges, only: [:index]
  resources :currency_newests, only: [:index]
  resources :currency_ranks, only: [:index]
  resources :currency_trades, only: [] do
    collection do 
      get :percent
    end
  end 
  resources :currency_trends, only: [:index]
  resources :currency_vols, only: [:index] do
    collection do 
      get :list
    end
  end  
  resources :currencies, only: [:index, :show]
  
  resources :exchange_notices, only: [:index, :show]
  resources :exchange_ranks, only: [:index]
  resources :exchange_trades, only: [] do
    collection do 
      get :percent
    end
  end
  resources :exchange_vols, only: [:index] do
    collection do 
      get :list
    end
  end 
  resources :exchanges, only: [:index, :show]

  resources :search, only: [:index]

  resources :user_tickers, only: [:index]

  resources :user, only: [] do
    collection do 
      get :login
      get :findpwd
      get :setting
    end
  end
end
