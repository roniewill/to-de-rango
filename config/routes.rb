Rails.application.routes.draw do
  get 'products/index'
  resources :products, only: [:index]
  resources :restaurants
  devise_for :users
  root 'home#index'
end
