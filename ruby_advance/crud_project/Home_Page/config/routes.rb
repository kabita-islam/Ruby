Rails.application.routes.draw do
  # root "posts#index"
  root :to => "home#homePage"
   get "about", to: "home#about"
  # get "index", to: "list#index"
  # get "create", to: "list#create"
  # get "edit", to: "list#edit"
  # get "destroy", to: "list#delete"
  resources :lists 
  
end
