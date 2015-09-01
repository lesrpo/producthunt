Rails.application.routes.draw do
  get 'products', to: 'products#index'
  get 'products/new', to: 'products#new'
  post '/products', to: 'products#create'
  get '/welcome', to: 'welcome#index'
  get '/products/:id', to: 'products#show'
  get '/products/:id/edit', to: 'products#edit'
  patch '/products/:id', to: 'products#update'
end
