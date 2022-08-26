Rails.application.routes.draw do
  
  get 'static_pages/home', as: 'home'
  # get 'static_pages/help'
  get '/help', to: 'static_pages#help'
  get '/about', to: 'static_pages#about'
  get 'static_pages/contact', as: 'contact'

  get '/signup', to: 'users#new'
  get '/show', to:'users#show'
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root 'static_pages#home'

  
  resources :users
  # Defines the root path route ("/")
  # root "articles#index"
end
 