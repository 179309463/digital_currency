Rails.application.routes.draw do
  get "/pages/*id" => 'pages#show', as: :page, format: false
  #root to: 'pages#show', id: 'home'

  #mount Thredded::Engine => '/forum'
  mount Thredded::Workgroup::Engine => '/forum'
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :exchanges, only: [:index, :show]
  devise_for :users

  mount_ember_app :frontend, to: '/frontend'

  root "exchanges#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
