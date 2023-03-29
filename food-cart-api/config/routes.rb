Rails.application.routes.draw do
  resources :carts, only:[:index, :show]
  resources :users, only:[:index, :show, :create, :update, :destroy]
  resources :orders, only:[:index,:show,:create,:update,:destroy]
  resources :foods, only:[:index, :show]

  # Sign-up
  post "/signup", to: "users#create"

  # Remain Logged in
  get "/me", to: "users#show"

  # Login/Logout Sessions
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"
  

end
