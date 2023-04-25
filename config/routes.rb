Rails.application.routes.draw do
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
  devise_for :users, controllers: { registrations: "registrations" }
  root to: "pages#home"
  get '/profile',to: 'pages#dashboard'
  get '/locations',to: 'pages#locations'
  get '/about_us',to: 'pages#aboutus'
  get '/contact_us',to: 'pages#contact'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
