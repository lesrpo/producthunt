Rails.application.routes.draw do
  get 'products', to: 'products#index'

  get '/welcome', to: 'welcome#index'
end
