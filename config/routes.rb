Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'registrations' }
  get 'prototypes/index'
  
  root to: "prototypes#index"

  resources :prototypes, only: [:index, :new, :create, :show, :edit, :update, :destroy] do
    resources :comments, only: [:create, :destroy]
  end

  resources :users

end