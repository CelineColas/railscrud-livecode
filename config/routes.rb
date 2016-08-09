Rails.application.routes.draw do

  resources :restaurants

  # # See all the restaurants
  # get 'restaurants', to: 'restaurants#index'

  # # See a specific restaurant
  # get 'restaurants/:id', to: 'restaurants#show'

  # # Add a new restaurant
  # get 'restaurants/new', to: 'restaurants#new'
  # post 'restaurants', to: 'restaurants#create'

  # # Update an existing restaurant
  # get 'restaurants/:id/edit', to: 'restaurants#edit'
  # put 'restaurants/:id', to: 'restaurants#update'

  # # Delete an existing restaurant
  # delete 'restaurants/:id', to: 'restaurants#destroy'
end
