Rails.application.routes.draw do
  devise_for :users
  root to: 'message#index'

  resources :users, only: [:edit, :update]
  resources :prototypes
  resources :messages, only: [:index, :new, :show, :create, :destroy]
  scope module: :prototypes do
    resources :popular, only: :index
  end
end
