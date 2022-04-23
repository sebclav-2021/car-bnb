Rails.application.routes.draw do
  devise_for :users
  root to: 'cars#index' #controller#method(vue)
  get "dashboard", to: "pages#dashboard"
  resources :cars, only: [:index, :show] do
    resources :bookings
  end
  resources :bookings, only: [:destroy]
end
