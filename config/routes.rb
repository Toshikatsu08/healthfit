Rails.application.routes.draw do
  devise_for :users
  root "toppages#index"
  resources :toppages, only: :index
  resources :users, only: [:edit, :update, :index]
  resources :messages, only: [:index, :new, :create]
  resources :features, only: [:index, :edit, :update, :new, :create] do
    resources :weights, only: [:new, :create]
  end
end
