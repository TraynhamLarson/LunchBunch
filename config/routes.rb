Rails.application.routes.draw do
  resources :restaurants
  resources :relationships
  devise_for :users

  get 'restaurants' => 'restaurants#index'

  get "profiles/:id" => "profiles#show", as: :profile

  get "profiles" => "profiles#index"

  get "bites" => "bites#index"
  get "home" => "home#show"

  resources :bites do
  resource :like
end


  root "home#show"
end
