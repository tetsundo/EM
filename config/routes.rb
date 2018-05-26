Rails.application.routes.draw do
  get 'carts/show'
  get 'carts/create'
  get 'carts/apdate'
  get 'carts/purchase'
  get 'solds/index'
  get 'solds/show'
  get 'genres/index'
  get 'genres/show'
  get 'genres/edit'
  get 'genres/update'
  get 'genres/destoy'
  get 'songs/new'
  get 'songs/create'
  get 'cds/show'
  get 'cds/index'
  get 'admins/top'
  get 'admins/edit'
  get 'users/show'
  get 'users/edit'
  devise_for :admins
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
