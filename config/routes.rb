Rails.application.routes.draw do
  root 'static_pages#home'

  get 'sessions/new'
  get  '/help',    to: 'static_pages#help'
  get  '/about',   to: 'static_pages#about'
  get  '/contact', to: 'static_pages#contact'
  get  '/createproduct',  to: 'products#new'
  get   '/myproducts', to: 'products#index'

  get    '/signup',  to: 'users#new'
  get    '/profile',  to: 'users#show'

  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  get '/newpayment', to: 'payment_types#new'

  get '/local', to: 'products#show_local'

  resources :images
  resources :wish_lists
  resources :orders
  resources :payment_types
  resources :favorites
  resources :products_votes
  resources :categories
  resources :users
  resources :products

end
