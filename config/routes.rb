Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root to: "searches#new"

  resources :receipts

  get 'baskets/show'
  resources :products do
    collection do
      get :subcategories
      get :districts
      get :states
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
  get '/panama', to: 'pages#panama'

  match "/404", to: "errors#not_found", via: :all
  match "/500", to: "errors#internal_server_error", via: :all
end
