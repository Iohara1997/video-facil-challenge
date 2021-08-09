Rails.application.routes.draw do
  post "videos", to: "videos#create"
  get "videos/new", to:"videos#new"
  root to:"videos#index"
end
