Rails.application.routes.draw do
  resources :posts
  get '/pages', to: 'pages#index'
  post '/pages/', to: 'pages#create'
  get '/pages/:id', to: 'pages#show', as: 'page'
  get '/pages/new', to: 'pages#new'
  get '/pages/:id/edit', to: 'pages#edit'
  patch '/pages/id', to: 'pages#update'
  delete '/pages/:id', to: 'pages#destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
