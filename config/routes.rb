Rails.application.routes.draw do
  root "toppages#index"
  get 'users', to: 'users#index'
end
