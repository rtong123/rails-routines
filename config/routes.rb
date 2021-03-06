Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'users#home'

  resources :users
  resources :routines
  resources :products
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get  '/logout', to: 'sessions#destroy'
  get '/auth/facebook/callback' => 'sessions#facebook_create'


end
