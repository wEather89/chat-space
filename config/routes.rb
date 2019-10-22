Rails.application.routes.draw do
  root to: 'message#index'

  resources :prototypes
  resources :messages
  scope module: :prototypes do
    resources :popular, only: :index
  end
end
