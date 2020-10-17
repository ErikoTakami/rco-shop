Rails.application.routes.draw do
  devise_for :users
  root to: 'items#index'
  resources :carts, only: [:show] 
  resources :items do
    post '/add_item' => 'carts#add_item'
    put '/update_item' => 'carts#update_item'
    delete '/delete_item' => 'carts#delete_item'
  end
end

