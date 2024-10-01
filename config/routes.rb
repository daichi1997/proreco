Rails.application.routes.draw do
  devise_for :users
  root to: "pro_recos#index"
  resources :pro_recos
end
