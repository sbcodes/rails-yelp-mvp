Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Create Restaurant
  get 'restaurants/new', to: 'restaurants#new', as: :new_restaurant
  post 'restaurants', to: 'restaurants#create'
  # Show
  get 'restaurants/:id', to: 'restaurants#show', as: :restaurant
  # Create Review
  get 'restaurants/:id/reviews/new', to: 'restaurants#new_review', as: :new_review
  post 'restaurants/:id/reviews', to: 'restaurants#create_review'

  # Defines the root path route ("/")
  # Restaurant List
  root 'restaurants#index'
end
