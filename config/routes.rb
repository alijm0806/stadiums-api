Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get "/stadiums" => "stadiums#index"
  get "/stadiums/:id" => "stadiums#show"
  post "/stadiums" => "stadiums#create"
  patch "/stadiums/:id" => "stadiums#update"
  delete "/stadiums/:id" => "stadiums#destroy"

  ###
  post "/users" => "users#create"
  post "/sessions" => "sessions#create"
end
