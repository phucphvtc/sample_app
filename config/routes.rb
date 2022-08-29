Rails.application.routes.draw do

  #static_pages
  get 'static_pages/home', as: 'home'
  get '/help', to: 'static_pages#help'
  get '/about', to: 'static_pages#about'
  get 'static_pages/contact', as: 'contact'
  #user
  get '/signup', to: 'users#new'
  get '/show', to:'users#show'
  get '/index',to: 'users#index'

  #Sessions
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html


  root 'static_pages#home'


  resources :users
  # Defines the root path route ("/")
  # root "articles#index"
end
 