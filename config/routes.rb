Rails.application.routes.draw do
  devise_for :users
  root "toppages#index"
  resources :messages, only: [:index, :show]
  get 'users', to: 'users#index'
end
