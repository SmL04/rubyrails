Rails.application.routes.draw do
  resources :reservations
  resources :clients

  get '/inicio' => 'home#index'
  root 'home#index'

  resources :librarians
  resources :books
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
