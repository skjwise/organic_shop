Rails.application.routes.draw do
  get 'order_items/show'

  get 'orders/show'

  get 'orders/new'

  get 'orders/create'

  get 'orders/edit'

  get 'orders/update'

  get 'orders/destroy'

  get 'products/index'

  get 'products/show'

  get 'sellers/index'

  get 'sellers/show'

  get 'sellers/new'

  get 'sellers/create'

  get 'users/new'

  get 'users/create'

  get 'users/show'

  get 'users/edit'

  get 'users/update'

  get 'users/destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
