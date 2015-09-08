Rails.application.routes.draw do
  root 'products#index'

  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  resources :users, only: [:new,:create]
  # get 'products', to: 'products#index', as: :products
  # get 'products/new', to: 'products#new', as: :new_product
  # post '/products', to: 'products#create'
  # get '/products/:id', to: 'products#show'
  # get '/products/:id/edit', to: 'products#edit'
  # patch '/products/:id', to: 'products#update', as: 'product'
  # delete '/products/:id', to: 'products#destroy'
  resources :products do
    resource :vote, only: [:create, :destroy]
    resources :comments, only: [:create]
  end
end
