Rails.application.routes.draw do
   resources :flats do
    collection do
      get :userflat
    end
     resources :reservations, only: [:new, :create] do
     end
  end

  resources :reservations, only: [:index, :show, :edit, :update] do
    collection do
      get :userflatreservation
      patch :accept
      patch :decline
    end
  resources :reservations, only: [:destroy], as: :delete_reservation
  end

  devise_for :users
  root to: "flats#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
