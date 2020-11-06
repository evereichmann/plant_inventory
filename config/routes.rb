Rails.application.routes.draw do
  resources :order_notes
  resources :plants
  root to: "pages#home"
  devise_for :users
  
  get 'pages/home'
  get 'pages/dashboard'
  resources :orders
  resources :users

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
