Rails.application.routes.draw do
   resources :flats do
     resources :reservations, only: [:new, :create] do
     end
  end

  resources :reservations, only: [:index, :show, :edit, :update]
  resources :reservations, only: [:destroy], as: :delete_reservation

  devise_for :users
  root to: "flats#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
