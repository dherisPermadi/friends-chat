Rails.application.routes.draw do
  resources :users, only: :show
  resources :conversations, only: :create do
    resources :messages, only: :create
  end

  root "home#index"
end
