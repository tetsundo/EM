Rails.application.routes.draw do
 devise_for :admins
  devise_for :users
  resources :carts, only: [:show, :create, :update, :destroy]
  resources :solds, only: [:index, :show]
  resources :genres, only: [:show]
  resources :songs, only: [:new, :create]
  resources :cds, except:[:new, :create, :destroy, :edit, :update]
  resources :admins do 
    resources :cds, only: [:new, :create, :destroy, :edit, :update]
  end
  resources :users, only: [:show, :edit, :update, :destroy]
  root 'cds#index'
  get 'admin/top' => 'admins#top'
  get 'carts/purchase' => 'carts#purchase'
  get 'admins/cds/show/:id' => 'admins#show', as: 'admins_cd'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
