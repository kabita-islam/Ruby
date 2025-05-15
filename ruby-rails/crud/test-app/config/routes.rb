Rails.application.routes.draw do
  resources :courses
  get "new", to: "tests#new", as: "new_tests"
  get "create", to: "tests#new"
  post "create", to: "tests#create", as: "tests"

  get "show/:id", to: "tests#show", as: "show_test"

  get "/", to: "tests#index", as: "all_test"

  get "edit/:id", to: "tests#edit", as: "edit_tests"
  patch "update/:id", to: "tests#update", as: "update_tests"

  delete "delete/:id", to: "tests#destroy", as: "delete_tests"
  resources :tests
end
