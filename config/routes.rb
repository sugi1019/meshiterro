Rails.application.routes.draw do
  devise_for :users  
  resources :users, only: [:show, :edit, :update]
  resources :post_images, only: [:new, :index, :show, :create, :destroy] do
    resource :favorite, only: [:create, :destroy]
    resources :post_comments, only: [:create, :destroy]
  end
  root to: 'homes#top'
  get 'homes/about', as:'about'
end