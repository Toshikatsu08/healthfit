Rails.application.routes.draw do
  devise_for :users
  root "toppages#index"
  resources :users, only: [:edit, :update, :index]
  resources :messages, only: [:index, :create, :new]
  get 'mypages', to: 'mypages#index'
end
