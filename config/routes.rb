Rails.application.routes.draw do
  get "videos/search", to: "videos#search"
  resources :videos, only: [:new, :create, :destroy]
  root to:"videos#index"
end
