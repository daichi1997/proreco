Rails.application.routes.draw do
  devise_for :users
  root to: "prorecos#index"
  resources :prorecos
end
