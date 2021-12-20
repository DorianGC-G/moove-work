Rails.application.routes.draw do
  root 'pages#home'

  namespace :api, defaults: { format: 'json' } do
    namespace :v1 do
      resources :places
      resources :reservations

      get 'places', to: 'places#index'
      get 'places/:id', to: 'places#show'
      post 'places/create'
      delete 'places/id', to: 'places#delete'
    end
  end

  get '*path', to: 'pages#home', via: :all

  devise_for :users

end
