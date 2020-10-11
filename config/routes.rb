Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  authenticated :user do
    workflow :store
    workflow :library

    root to: "hello#index", as: :authenticated_root
  end

  post "actions#run", to: "actions#run", defaults: { format: "js" }

  root to: "hello#login"
end
