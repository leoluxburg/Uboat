Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root to: "searches#new"

  resources :receipts

  get 'baskets/show'
  resources :products do
    member do
      get :subcategories
      get :districts
      get :states
      get :sectors
      get :marinas
    end
  end

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  resources :profiles
  resources :order_items
  resources :searches
  resource :baskets, only: [:show]
  devise_for :users, controllers: { registrations: "registrations" }

  get '/profile',to: 'pages#dashboard'
  get '/locations',to: 'pages#locations'
  get '/about_us',to: 'pages#about_us'
  get '/contact_us',to: 'pages#contact'
  get '/your_products', to: 'pages#your_products'
  get '/your_clients', to: 'pages#your_clients'
  get '/bocas_del_toro', to: 'pages#bocas_del_toro'
  get '/cocle', to: 'pages#cocle'
  get '/colon', to: 'pages#colon'
  get '/chiriqui', to: 'pages#chiriqui'
  get '/darien', to: 'pages#darien'
  get '/herrera', to: 'pages#herrera'
  get '/los_santos', to: 'pages#los_santos'
  get '/panama', to: 'pages#panama'
  get '/veraguas', to: 'pages#veraguas'
  get '/panama_oeste', to: 'pages#panama_oeste'
  get '/embera', to: 'pages#embera'
  get '/guna_yala', to: 'pages#guna_yala'
  get '/paguelofacil_test', to: 'pages#paguelofacil_test'
  get '/payment_method', to: 'receipts#payment_method'
  get '/check_out', to: 'receipts#payment_confirmation'
  get '/card_error', to: 'pages#card_error'
  get '/thank_you', to: 'pages#thank_you'

  match "/404", to: "errors#not_found", via: :all
  match "/500", to: "errors#internal_server_error", via: :all
end
