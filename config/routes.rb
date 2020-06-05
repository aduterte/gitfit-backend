Rails.application.routes.draw do
  resources :lists
  resources :workouts
  resources :exercises
  resources :routines
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  post "/login", to: "users#login"

  get "/login", to: "users#token_authenticate"
end
