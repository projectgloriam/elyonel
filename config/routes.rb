Rails.application.routes.draw do
  devise_for :users
  resources :profits
  resources :product_orders
  resources :orders
  resources :clients
  resources :expenditures
  resources :productions
  resources :products
  resources :users
  resources :roles
  get 'welcome/index'
  root to: 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
