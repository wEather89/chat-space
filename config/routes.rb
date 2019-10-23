Rails.application.routes.draw do
  root to: 'message#index'

  resources :prototypes
  resources :messages, only: [:index, :new, :show, :create, :destroy]
  scope module: :prototypes do
    resources :popular, only: :index
  end
end
