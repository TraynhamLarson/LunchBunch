Rails.application.routes.draw do
  resources :restaurants
  devise_for :users

  get 'restaurants' => 'restaurants#index'

  get "profiles/:id" => "profiles#show", as: :profile

  get "profiles" => "profiles#index"

  resources :bites do
  resource :like
end

resources :relationships

  root "bites#index"
end
