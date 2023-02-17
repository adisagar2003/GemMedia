Rails.application.routes.draw do
  
  root "main#index"
  resources :posts do 
    resources :comments
    resources :likes
  end
  devise_for :users

 get "/about", to:"main#about"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
get "/users", to:"main#users"
  # Defines the root path route ("/")
  # root "articles#index"
end
