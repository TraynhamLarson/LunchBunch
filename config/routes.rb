Rails.application.routes.draw do
  resources :bite
  devise_for :users

  get "profiles/:id" => "profiles#show", as: :profile

  get "profiles" => "profiles#index"

  resources :bite do
  resources :like
end

resources: relationships

  get "show" => "bite#show"

  get "new" => "bite#new"

  get "edit" => "bite#edit"

  root "bite#index"
end
