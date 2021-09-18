Rails.application.routes.draw do
  devise_for :users

  root to: 'pages#home'
<<<<<<< HEAD
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :bookings do
    resources :reviews, only: [ :new, :create, :destroy ]
  end
=======
  
  resources :flats
>>>>>>> master
end
