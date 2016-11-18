Rails.application.routes.draw do
  root 'static_pages#login'
  get '/register', to: 'users#new'
  get '/login',    to: 'sessions#new' #Page for a new session
  post '/login',    to: 'sessions#create' #Create a new session
  delete '/logout', to: 'sessions#destroy' #delete the session
  resources :users

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


end
