Rails.application.routes.draw do

  get 'carts/index'

  get 'carts/show'

  resources :sellers
  resources :users
  resources :orders
  resources :products
  resources :order_items
  # resources :sessions
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  root to: 'organic#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
