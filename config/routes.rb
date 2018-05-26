Rails.application.routes.draw do
 devise_for :admins
  devise_for :users
  resources :carts
  resources :solds
  resources :genres
  resources :songs
  resources :cds
  resources :admins
  resources :users
  root 'cds#index'
  get 'admins/top' => 'admins#top'
  get 'carts/purchase' => 'carts#purchase'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
