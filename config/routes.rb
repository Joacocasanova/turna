Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  authenticate :user, ->(user) { user.admin? } do
    mount Blazer::Engine, at: "blazer"
  end
  devise_for :users
  root to: 'pages#introduction'
  get 'about', to: 'pages#about'
  post 'send_provider', to: 'pages#send_provider'
  get 'home', to: 'pages#home'
  get 'pending_providers', to: 'pages#pending_providers'
  resources :providers, only: [ :index, :show, :new, :create, :update ] do
    resources :bookings, only: [:create]
  end
  resources :bookings, only: [ :index, :update ] do
    resources :payments, only: [ :new ]
    resources :reviews, only: [ :new, :create ]
  end
  get 'services/:id/available_time_slots', to: 'services#available_time_slots'
  post 'prepare_payment', to: 'bookings#prepare_payment'
  mount StripeEvent::Engine, at: '/stripe-webhooks'
end
