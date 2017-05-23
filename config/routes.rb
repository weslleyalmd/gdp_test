Rails.application.routes.draw do
  root to: 'application#index'

  resources :price_discount_rules
  resources :more_for_less_rules
  resources :products
  resources :clients

  get 'checkout',       to: 'checkouts#index'
  post 'checkout/total', to: 'checkouts#total'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
