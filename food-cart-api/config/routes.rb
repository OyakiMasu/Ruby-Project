Rails.application.routes.draw do
  resources :carts, only:[:index]
  resources :users, only:[:index]
  resources :orders, only:[:index,:create,:update,:destroy]
  resources :foods, only:[:index, :show]

  # login and signup
end
