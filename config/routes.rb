Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :users, only: [:show]
  resources :restaurants, only: [:show]
  resources :lists, only: [:show]



end
