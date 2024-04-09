Rails.application.routes.draw do
  resources :contacts, only: [:new, :create, :show]
  resources :providers, only: [:new, :create, :show]
  # root "articles#index"
end
