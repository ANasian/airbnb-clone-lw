Rails.application.routes.draw do
  devise_for :users

  root to: 'pages#home'

  resources :flats do
    resources :bookings, only: [ :create ] do
      resources :reviews, only: [ :new, :create, :destroy ]
    end
  end
  resources :bookings, only: [ :index, :show, :destroy]
  get "my_flats", to: "flats#my_flats"
end
