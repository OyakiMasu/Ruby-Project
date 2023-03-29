Rails.application.routes.draw do
  resources :carts, only:[:index, :show]
  resources :users, only:[:index]
  resources :orders, only:[:index,:show,:create,:update,:destroy]
  resources :foods, only:[:index, :show]

  # login and signup
end
