Rails.application.routes.draw do
  resources :stop_lines
  resources :starred_stops
  resources :stops
  resources :lines
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
