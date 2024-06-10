Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
  get "/products" => "products#index" #everyone
  get "/products/:id" => "products#show"  #everyone
  post "/products" => "products#create" #admin
  patch "/products/:id" =>"products#update" #admin
  delete "/products/:id" => "products#destroy"  #admin

  get "/suppliers" => "suppliers#index" #admin
  get "/suppliers/:id" => "suppliers#show"  #admin

  post "/users" => "users#create" #everyone
  post "/sessions" => "sessions#create" #everyone

  post "/orders"  => "orders#create"  #logged in
  get "/orders"  => "orders#index"  #logged in
  get "/orders/:id"  => "orders#show" #logged in

end
