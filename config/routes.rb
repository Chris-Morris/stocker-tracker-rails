Rails.application.routes.draw do
  resources :stocks
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "home#index"

  get '/stockjson', to: "stocks#fetch_stocks"

  post "/" => 'home#index'
end
