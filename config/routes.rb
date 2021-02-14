Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'
  get 'introduction', to: 'pages#introduction'
  resources :providers, only: [ :index, :show ] do
    resources :bookings, only: [:create]
  end
  resources :bookings, only: [ :index, :update ] do
    resources :reviews, only: [ :new, :create ]
  end
end
