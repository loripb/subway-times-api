Rails.application.routes.draw do
  resources :stop_lines
  resources :starred_stops
  resources :stops, only: [ :show ]
  resources :lines, only: [ :index, :show ]
  resources :users

  post "/login", to: "users#login"
  get "/persist", to: "users#persist"
end
