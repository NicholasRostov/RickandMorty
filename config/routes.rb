Rails.application.routes.draw do
  
  namespace :api do
    namespace :v1 do
      get "/ricks/:id", to: "ricks#show"
      get "/ricks", to: "ricks#index"
      post "/ricks", to: "ricks#create"
      delete "/ricks/:id", to: "ricks#destroy"
      patch "/ricks/:id", to: "ricks#update"
    end


    namespace :v2 do
      get "/ricks/:id", to: "ricks#show"
      get "/ricks", to: "ricks#index"
      post "/ricks", to: "ricks#create"
      delete "/ricks/:id", to: "ricks#destroy"
      patch "/ricks/:id", to: "ricks#update"
    end
  end
end
