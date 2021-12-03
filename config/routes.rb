Rails.application.routes.draw do
  get 'reservations/new'
  devise_for :users
  root to: 'pages#home'

  resources :places
  resources :reservations
end
