Rails.application.routes.draw do
  devise_for :users
  root to: 'message#index'

  resources :users, only: [:edit, :update]
  resources :groups, only: [:new, :create, :edit, :destroy]
  resources :messages, only: [:index, :new, :show, :create, :destroy]

  # resources :groups, only: [:new, :create, :edit, :destroy] do
  #   resources :messages, only: [:index, :new, :show, :create, :destroy]
  # end
end

