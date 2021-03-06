Rails.application.routes.draw do
  resources :stop_lines
  resources :starred_stops, only: [ :index, :create, :destroy, :show ]
  resources :stops, only: [ :index, :show ]
  resources :lines, only: [ :index, :show ]
  resources :users, only: [ :index, :create ]

  get "/find", to: "stop_lines#find"
  post "/login", to: "users#login"
  get "/persist", to: "users#persist"
end
