Rails.application.routes.draw do
  resources :food_items
  get 'home/index'

  get 'menu'		=> 'home#menu'
  get 'contact_us'	=> 'home#contact_us'

  root "home#index"
end