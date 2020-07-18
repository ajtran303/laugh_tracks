Rails.application.routes.draw do
  get "/comedians", to: "comedians#index"
  post "/comedians", to: "comedians#create"

  get "/comedians/new", to: "comedians#new"
end
