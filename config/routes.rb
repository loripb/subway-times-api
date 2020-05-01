Rails.application.routes.draw do
  # resources :stop_lines
  resources :starred_stops, only: [ :index, :create, :destroy ]
  resources :stops, only: [ :index, :show ]
  resources :lines, only: [ :index, :show ]
  resources :users, only: [ :index, :create ]

  post "/login", to: "users#login"
  get "/persist", to: "users#persist"
end
