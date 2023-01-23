Rails.application.routes.draw do
  get "product/index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "product#index"
  get "/product", to: "product#index"
end
