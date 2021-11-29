Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  get 'places', to:"places#index"
end
