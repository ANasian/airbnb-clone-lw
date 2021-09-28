Rails.application.routes.draw do
  devise_for :users

  root to: 'pages#home'

  resources :flats do
    resources :bookings, only: [ :new, :create ]
  end

  resources :bookings, only: [ :index, :show, :destroy] do
    resources :reviews, only: [ :create, :destroy ]
  end

  get "my_flats", to: "flats#my_flats"
end

