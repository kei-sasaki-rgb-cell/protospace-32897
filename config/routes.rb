Rails.application.routes.draw do

  devise_for :users
  root to: "prototypes#index"
  resources :users, only: [:index, :new, :create, :show]
  resources :prototypes, only: [:index, :show, :new, :create, :destroy, :edit, :update] do
    resources :comments, only: :create
  end
end