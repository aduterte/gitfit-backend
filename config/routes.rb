Rails.application.routes.draw do
  resources :likes
  resources :friends
  resources :weights
  resources :posts
  resources :lists
  resources :workouts
  resources :exercises
  resources :routines
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  post "/login", to: "users#login"

  get "/login", to: "users#token_authenticate"
  post "/unfollow", to: "friends#delete"
  get "/test/:id", to: "users#test_login"
end
