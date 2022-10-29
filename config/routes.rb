Rails.application.routes.draw do

  get '/inicio' => 'home#index'
  root 'home#index'

  resources :clients
  resources :librarians
  resources :books
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
