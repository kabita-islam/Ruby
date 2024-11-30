Rails.application.routes.draw do
  # root "posts#index"
  root :to => "home#homePage"
  get "about", to: "home#about" 
  # get "index", to: "list#index"
  # get "create", to: "list#create"
  # get "edit", to: "list#edit"
  # get "destroy", to: "list#delete"
  resources :lists 
  get "signup" , to: "users#new"
  resources :users
  # resources :users, except: [:new, :edit]
  # post "users", to: "user#create"
  # get "user/:id/edit" , to: "user#edit" , as: :edit_user
  # get "show/:id" , to: "user#show"  
end
