Rails.application.routes.draw do
  scope "/" do
    controller :session do
      get "/login", action: :new, as: "new_login"
      post "/login", action: :create, as: "create_login"

      delete "/logout", action: :destroy, as: "logout"

    end
  end
  scope "/article" do
    controller :article do
      get "/index", action: :index, as: "all_articles"
      get "/new", action: :new, as: "articles"
      post "/new_article", action: :create, as: "new_articles"
      get "/edit/:id", action: :edit, as: "edit_articles"
      patch "/update/:id", action: :update, as: "update_articles"
      get "/show/:id", action: :show, as: "show_articles"
      delete "/delete/:id", action: :destroy, as: "delete_articles"
    end
  end


  scope "/users" do
    controller :user do
      get "/index", action: :index, as: "all_users"
      get "/new", action: :new, as: "new_users"
      post "/create", action: :create, as: "create_users"
      get "/edit/:id", action: :edit, as: "edit_users"
      patch "/update/:id", action: :update, as: "update_users"
      get "/show/:id", action: :show, as: "show_users"
      delete "/delete/:id", action: :destroy, as: "delete_users"
    end
  end
end
