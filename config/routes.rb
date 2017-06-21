Rails.application.routes.draw do
  resources :orders
  resources :food_items
  resources :orders
  
  get 'home/index'

  get 'menu'		=> 'home#menu'
  get 'contact_us'	=> 'home#contact_us'

  root "home#index"
end