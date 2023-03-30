Rails.application.routes.draw do
  # Carts
  resources :carts, only:[:index, :show]

  # Orders
  resources :orders, only:[:index,:show,:create,:update,:destroy]

  # Foods
  resources :foods, only:[:index, :show]

  # Users
  resources :users, only:[:index, :show, :create, :update, :destroy]

  # Sign-up
  post "/signup", to: "users#create"

  # Remain Logged in
  get "/me", to: "users#show"

  # Change password
  patch "/users/:id/change_password", to: "users#change_password"

  # Login/Logout Sessions
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"
  

end
