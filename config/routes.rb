Rails.application.routes.draw do
  devise_for :users

  get "profiles/:id" => "profiles#show", as: :profile

  get "profiles" => "profiles#index"

  resources :bites do
  resource :like
end

resources :relationships

  get "show" => "bite#show"

  get "new" => "bite#new"

  get "edit" => "bite#edit"

  root "bites#index"

end
