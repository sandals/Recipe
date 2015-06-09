Rails.application.routes.draw do
  root 'landing#index', via: :get

  resources :recipes, only: [:show, :new, :create]
end
