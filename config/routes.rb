Rails.application.routes.draw do
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
  resource :baskets, only: [:show]
  devise_for :users, controllers: { registrations: "registrations" }
  root to: "pages#home"
  get '/profile',to: 'pages#dashboard'
  get '/locations',to: 'pages#locations'
  get '/about_us',to: 'pages#about_us'
  get '/contact_us',to: 'pages#contact'
  get '/your_products', to: 'pages#your_products'
  get '/your_clients', to: 'pages#your_clients'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
