Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  authenticate :user, ->(user) { user.admin? } do
    mount Blazer::Engine, at: "blazer"
  end
  devise_for :users
  root to: 'pages#introduction'
  get 'about', to: 'pages#about'
  post 'send_provider', to: 'pages#send_provider'
  get 'contact', to: 'pages#contact'
  get 'home', to: 'pages#home'
  resources :providers, only: [ :index, :show, :new, :create ] do
    resources :bookings, only: [:create]
  end
  resources :bookings, only: [ :index, :update ] do
    resources :payments, only: [ :new ]
    resources :reviews, only: [ :new, :create ]
  end

  post 'prepare_payment', to: 'bookings#prepare_payment'
  mount StripeEvent::Engine, at: '/stripe-webhooks'
end
