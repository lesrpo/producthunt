Rails.application.routes.draw do
  get 'products', to: 'products#index'
  get 'products/new', to: 'products#new'
  get '/welcome', to: 'welcome#index'
end
