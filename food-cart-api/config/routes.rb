Rails.application.routes.draw do
  resources :categories, only: [:index, :show]
  resources :carts, only:[:index, :show, :create]


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
  get '/signup', to: 'signup#index'


  # Remain Logged in
  get "/me", to: "users#show"

  # Change password
  patch "/users/:id/change_password", to: "users#change_password"

  # Login/Logout Sessions
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"
  
  get '/favicon.ico', to: 'application#favicon'

  # reset_password
  post '/reset_password', to: 'reset_password#create'
  put '/reset_password', to: 'reset_password#update'

end
