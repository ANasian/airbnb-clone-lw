Rails.application.routes.draw do
  devise_for :users

  root to: 'pages#home'

  resources :flats do
    resources :bookings, only: [ :new, :create ] do
      resources :reviews, only: [ :new, :create, :destroy ]
    end
  end
  resources :bookings, only: [ :index, :show, :destroy]
end
