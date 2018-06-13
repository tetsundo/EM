Rails.application.routes.draw do
  devise_for :admins
  devise_for :users
  resources :carts, only: [:show, :create, :update, :destroy] do
    get 'purchase' => 'carts#purchase', as: 'purchase'
  end
  resources :solds, only: [:index, :show, :create]
  resources :genres, only: [:show]
  resources :songs, only: [:new, :create]
  resources :cds, only:[:show, :new, :create, :destroy, :edit, :update]
  resources :admins do
    resources :cds, only: [:show, :new, :create, :destroy, :edit, :update]
    resources :users, only: [:show, :edit, :update, :destroy, :index]
  end
  resources :users, only: [:show, :edit, :update, :destroy]
  root 'cds#index'
  get 'admins/:admin_id/top' => 'admins#top', as: 'admin_root'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
