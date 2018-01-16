Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :exchanges, only: [:index, :show]
  devise_for :users
  root "exchanges#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
