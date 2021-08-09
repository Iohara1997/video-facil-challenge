Rails.application.routes.draw do
  resources :categories
  get "videos/search", to: "videos#search"
  resources :videos, only: [:new, :create, :destroy]
  root to:"videos#index"
end
