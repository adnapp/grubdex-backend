Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # resources :users, only: [:show, :index]
  # resources :restaurants, only: [:show, :index]
  # resources :lists, only: [:show]

  get "/users", to: "users#index"
  get "/users/:id", to: "users#show"

  get "/restaurants", to: "restaurants#index"
  get "/restaurants/:id", to: "restaurants#show"

  get "/lists", to: "lists#index"
  get "/lists/:id", to: "lists#show"
  post "/lists", to: "lists#create"

  post "/log_me_in", to: "users#log_me_in"

end
