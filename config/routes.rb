Rails.application.routes.draw do
  resources :bite
  devise_for :users

  get 'show' => 'bite#show'

  get 'new' => 'bite#new'

  get 'edit' => 'bite#edit'

  root 'bite#index'
end
