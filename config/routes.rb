Rails.application.routes.draw do
  resources :categories
  get "videos/search", to: "videos#search"
  resources :videos, only: [:new, :create, :destroy, :edit, :update]
  root to:"videos#index"
end
