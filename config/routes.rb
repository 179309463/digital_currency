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
end
