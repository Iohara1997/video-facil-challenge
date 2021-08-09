Rails.application.routes.draw do
  delete "videos/:id/delete", to: "videos#destroy", as: :video
  post "videos", to: "videos#create"
  get "videos/new", to:"videos#new"
  root to:"videos#index"
end
