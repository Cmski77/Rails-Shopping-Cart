Rails.application.routes.draw do
  get 'order_items/create'

  get 'order_items/update'

  get 'order_items/destroy'

  get 'carts/show'

  get 'products/index'

  get 'sessions/new'

  get 'users/new'

  get  '/help', to: 'static_pages#help'

  #root 'static_pages#home'

  get  '/about',   to: 'static_pages#about'

  get  '/contact', to: 'static_pages#contact'

  get '/signup', to: 'users#new'
  post '/search', to: 'users#search'

  post '/search2', to: 'products#search2'

   post '/signup',  to: 'users#create'
   get    '/login',   to: 'sessions#new'
   post   '/login',   to: 'sessions#create'
   delete '/logout',  to: 'sessions#destroy'

   resources :products, only: [:index]
   resource :cart, only: [:show]
   resources :order_items, only: [:create, :update, :destroy]
   root to: "products#index"

  resources :users




end
