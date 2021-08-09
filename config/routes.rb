Rails.application.routes.draw do
  resources :videos, only: [:new, :create, :destroy]
  root to:"videos#index"
end
