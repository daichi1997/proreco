Rails.application.routes.draw do
  get 'users/show'
  devise_for :users
  root to: "pro_recos#index"
  resources :pro_recos
  resources :users, only: [:show]
end
