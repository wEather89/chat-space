Rails.application.routes.draw do
  resources :prototypes

  scope module: :prototypes do
    resources :popular, only: :index
  end
end
