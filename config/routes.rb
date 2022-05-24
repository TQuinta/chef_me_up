Rails.application.routes.draw do
  devise_for :users
  root to: 'chef_profiles#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :chef_profiles, only: [:index, :show, :new, :create]
  resources :bookings, only: [:index]
end
