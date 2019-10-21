Rails.application.routes.draw do

  resources :sellers
  resources :users
  resources :orders
  resources :products
  resources :order_items

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
