Rails.application.routes.draw do
  get 'hello_world', to: 'hello_world#index'
  get 'reservations/new'
  
  get 'dashboard', to: 'pages#dashboard'
  root to: 'pages#home'
  namespace :api, defaults: { format: 'json' } do
    namespace :v1 do
      get 'places/index'
      get 'places/:id', to: 'places#show'
      post 'places/create'
      delete 'places/id', to: 'places#delete'
    end
  end

  devise_for :users

  resources :places
  resources :reservations
end
