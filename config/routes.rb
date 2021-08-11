Rails.application.routes.draw do
  resources :categories
  get "videos/search", to: "videos#search"
  root to:"videos#index"
  resources :videos, only: [:new, :create, :destroy, :edit, :update, :show] do
    resources :comments
  end
  post "videos/:video_id/comments/new", to: "comments#create"
end
