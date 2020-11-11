Rails.application.routes.draw do
  devise_for :users
  root to: 'items#index'

  resources :carts, only: [:show]
  get '/cart_blank', to: 'carts#cart_blank'
  
  resources :items do
    post '/add_item', to: 'carts#add_item'
    put '/update_item', to: 'carts#update_item'
    delete '/delete_item', to: 'carts#delete_item'
  end

  resources :orders, only: [:index, :new, :create, :destroy]
  get '/done', to: 'orders#done'

  resources :cards, only: [:new, :create]

  get '/keyword', to: 'searches#keyword'
end

