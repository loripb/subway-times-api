Rails.application.routes.draw do
  resources :stop_lines
  resources :starred_stops
  resources :stops
  resources :lines
  resources :users

  post "/login", to: "users#login"
  get "/persist", to: "users#persist"
end
