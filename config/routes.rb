Rails.application.routes.draw do
  get 'hello_world', to: 'hello_world#index'
  get 'reservations/new'
  
  get 'dashboard', to: 'pages#dashboard'
  root to: 'pages#home'

  devise_for :users

  resources :places
  resources :reservations
end
