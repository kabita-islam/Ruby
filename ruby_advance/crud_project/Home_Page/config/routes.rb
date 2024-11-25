Rails.application.routes.draw do
  # root "posts#index"
  root :to => "home#homePage"
end
