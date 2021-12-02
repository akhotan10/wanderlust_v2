Rails.application.routes.draw do
  root :to => "trips#index"
  resources :highlights
  resources :activities
  resources :dishes
  resources :dinings
  resources :locations
  devise_for :users
  resources :users
  resources :trips
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
