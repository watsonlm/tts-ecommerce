Rails.application.routes.draw do

  post 'add_to_cart' => 'cart#add_to_cart'

  get 'view_order' => 'cart#view_order'

  get 'checkout' => 'cart#checkout'

  post 'order_complete' => 'cart#order_complete'

  devise_for :users

  get 'users' => 'users#index'

  post 'users/update' => 'users#update'

  root 'storefront#all_items'

  get 'categorical' => 'storefront#items_by_category'

  get 'branding' => 'storefront#items_by_brand'

  delete 'line_item' => 'cart#remove_item'



  resources :products
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
