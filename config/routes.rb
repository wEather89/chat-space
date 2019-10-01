Rails.application.routes.draw do
  root to: 'message#index'

  resources :prototypes

  scope module: :prototypes do
    resources :popular, only: :index
  end
end
