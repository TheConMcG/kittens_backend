Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get "/kittens" => "kittens#index"
  post "/kittens" => "kittens#create"
  get "/kittens/:id" => "kittens#show"
  
end
