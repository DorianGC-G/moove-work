Rails.application.routes.draw do
  root to: 'pages#home'

  get 'places', to:"places#index"
end
