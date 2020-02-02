Rails.application.routes.draw do
  resources :quests
  resources :leprechauns, only: [:index, :show, :new, :create, :edit, :update, :destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :unicorns, only: [:index, :show, :new, :create, :edit, :update, :destroy]
  # get '/unicorns', to: "unicorns#index"
  # get '/unicorns/:id', to: "unicorns#show"
end
