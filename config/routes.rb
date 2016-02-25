Rails.application.routes.draw do
  resources :bites
  devise_for :users

  get 'show' => 'bites/show'

  get 'new' => 'bites/new'

  get 'edit' => 'bites/edit'

  root 'bites#index'
end
