Rails.application.routes.draw do
  resources :restaurants
  resources :bites
  devise_for :users

  get 'profiles/:id' => 'profiles#show'

  get 'profiles' => 'profiles#index'

  get 'restaurants' => 'restaurants#index'


  get 'show' => 'bites/show'

  get 'new' => 'bites/new'

  get 'edit' => 'bites/edit'

  root 'bites#index'
end
