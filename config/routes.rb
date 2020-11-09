Rails.application.routes.draw do
  root to: "pages#home"
  resources :plants
  devise_for :users
  resources :orders
  resources :users, only: [:new, :create, :destroy, :edit]
  resources :plant_notes, only: [:new, :create, :destroy, :edit]
  resources :order_notes, only: [:new, :create, :destroy, :edit]
  
  get 'pages/home'
  get 'pages/dashboard'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
