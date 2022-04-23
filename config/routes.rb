Rails.application.routes.draw do
  devise_for :users
  root to: 'cars#index'
  
  resources :cars, only: [:index, :show] do
    #collection do
    #  get :booking_dashboard # cars/booking_dashboard
    #end
    resources :bookings
  end
  resources :bookings, only: [:destroy]
end
