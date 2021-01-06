Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # resources :users, only: [:show, :index]
  # resources :restaurants, only: [:show, :index]
  # resources :lists, only: [:show, :create]

  get "/users", to: "users#index"
  get "/users/:id", to: "users#show"

  get "/restaurants", to: "restaurants#index"
  get "/restaurants/:id", to: "restaurants#show"
  

  get "/lists", to: "lists#index"
  get "/lists/:id", to: "lists#show"
  post "/lists", to: "lists#create"
  delete "/lists/:id", to: "lists#destroy"
  

  delete "/AddRestaurantToLists/:id", to: "add_restaurant_to_lists#destroy"
  get "/AddRestaurantToLists/", to: "add_restaurant_to_lists#index"
  get "/AddRestaurantToLists/:id", to: "add_restaurant_to_lists#show"

  post "/log_me_in", to: "users#log_me_in"

  



end
