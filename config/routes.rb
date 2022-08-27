# frozen_string_literal: true

Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get '/users', to: 'users#index'
  get '/users/:id', to: 'users#show'
  get '/users/:user_id/posts', to: 'posts#index', as: 'user_posts_path'
  get '/users/:user_id/posts/new', to: 'posts#new', as: 'new_post' # new
  post '/users/:user_id/posts/new', to: 'posts#create'
  get '/users/:user_id/posts/:post_id', to: 'posts#show'

  # Defines the root path route ("/")
  # root "articles#index"
end
