Rails.application.routes.draw do
  resources :quests, only: [:index, :create, :show, :update, :destroy]
  # resources :unicorns
  resources :unicorns, only: [:index, :create, :show, :update, :destroy]

end
