Rails.application.routes.draw do
  # resources :unicorns
  resources :unicorns, only: [:index, :create, :update, :destroy]
end
