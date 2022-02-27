Rails.application.routes.draw do
  resources :user_profiles, only: [:show, :edit, :update]
  resources :products
  resources :cart, only: [:show]
  devise_for :users
  post '/add_to_cart', to: "cart#add_to_cart"

  root to: 'pages#home'

  namespace :admin do
    resources :users
    resources :products
    resources :user_profiles
    resources :cart

    root to: "users#index"
  end
end
