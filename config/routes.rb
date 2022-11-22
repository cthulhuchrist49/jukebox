Rails.application.routes.draw do
  root "albums#index"
  
  get "/album", to: "albums#index"
  get "/album/:id", to: "albums#show"
  get "/ss", to: "albums#songselect"
end
