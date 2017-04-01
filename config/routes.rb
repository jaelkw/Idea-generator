Rails.application.routes.draw do
  resources :ideaposts
  resources :users
  root 'users#index'
end
