Rails.application.routes.draw do
  root "toppages#index"
  resources :messages, only: [:index, :show]
  get 'users', to: 'users#index'
end
