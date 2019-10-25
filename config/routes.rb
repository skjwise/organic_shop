Rails.application.routes.draw do


  resources :sellers, only: [:index, :show]
  resources :users
  resources :orders, only: [:show, :create]
  resources :order_items, only:[:show]

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  get '/logout', to: 'sessions#destroy'


  delete '/remove/:id', to: 'order_items#destroy', as: 'remove'

  root to: 'sellers#index'

  post '/add_to_cart', to: 'carts#add_to_cart', as: 'add'
  get '/cart', to: 'carts#show', as: 'cart'
  post '/cart', to: 'carts#checkout'
  get '/pay', to: 'orders#pay'
  get '/history', to: 'orders#history'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
