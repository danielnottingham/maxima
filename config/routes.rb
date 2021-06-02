Rails.application.routes.draw do
  resources :vehicles
  resources :lobbies
  get 'home/index'
  devise_for :users
  root to: 'home#index'
end
