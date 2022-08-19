Rails.application.routes.draw do
  # route to test your configuration
  get '/hello', to: 'application#hello_world'

  # fallback route for other URL extensions
  get '*path',
    to: 'fallback#index',
    constraints: ->(req) { !req.xhr? && req.format.html? }

  resources :albums, only: [:index, :show]
  resources :songs, only: [:index, :show]
  resources :comments, only: [:index, :show, :create, :update, :destroy]
end