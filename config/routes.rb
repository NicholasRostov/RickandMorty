Rails.application.routes.draw do
  get "/ricks/:id", to: "ricks#show"
  get "/ricks", to: "ricks#index"
  post "/ricks", to: "ricks#create"
  delete "/ricks/:id", to: "ricks#destroy"
  patch "/ricks/:id", to: "ricks#update"
end
