Rails.application.routes.draw do
  get 'messages/index'
  root "toppages#index"
  get 'users', to: 'users#index'
end
