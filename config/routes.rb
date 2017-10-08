Rails.application.routes.draw do
  resources :events
  resources :place_ratings
  resources :visitor_reviews
  resources :places_to_visits
  devise_for :users
  resources :locations
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
