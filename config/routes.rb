require 'sidekiq/web'
require 'resque/server'

Rails.application.routes.draw do
  namespace :admin do
    resources :exchanges
    resources :exchange_notices
    resources :exchange_trade_ranks
  end

  ActiveAdmin.routes(self)
  match "/delayed_job" => DelayedJobWeb, :anchor => false, :via => [:get, :post]
  mount Sidekiq::Web => '/sidekiq'

  mount Resque::Server.new, at: 'resque'
 
  mount Dashing::Engine, at: Dashing.config.engine_path
  get "/pages/*id" => 'pages#show', as: :page, format: false
  #root to: 'pages#show', id: 'home'

  #mount Thredded::Engine => '/forum'
  mount Thredded::Workgroup::Engine => '/forum'
  mount RailsAdmin::Engine => '/rails_admin', as: 'rails_admin'
  resources :exchanges, only: [:index, :show]
  devise_for :users

  mount_ember_app :frontend, to: '/frontend'

  root "exchanges#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
