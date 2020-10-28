Rails.application.routes.draw do
  devise_for :users
  root to: 'items#index'
  resources :carts, only: [:show]
  get '/cart_blank' => 'carts#cart_blank'
  
  resources :items do
    post '/add_item' => 'carts#add_item'
    put '/update_item' => 'carts#update_item'
    delete '/delete_item' => 'carts#delete_item'
  end

  post '/order', to: 'orders#create'
  get '/order', to: 'orders#index'
  get '/order/:id', to: 'orders#new'
  delete '/order/:id', to:'orders#destroy'
  get '/done', to: 'orders#done'

  resources :cards, only: [:new, :create]
end

