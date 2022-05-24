Rails.application.routes.draw do
  devise_for :users
  root to: 'chef_profiles#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :chef_profiles, only: [:show, :new, :create] do
    resources :bookings, only: [:new, :create]
  end
  resources :bookings, only: [:index]
end

# to create a page where a user can fill a request
# it will be dynamic (based on chef profile id)
# i need to make a form (already: price per day, reserve button)
# needs backend to calc days * price/day & display
# user to fill in: start & end date, people number)
# do i need a new router?

# class text box (Tommy has done)
