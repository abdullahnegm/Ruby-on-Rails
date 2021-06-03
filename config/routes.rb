Rails.application.routes.draw do

  resources :categories
  root 'posts#index'

  get 'session/new'
  get 'session/create'
  get 'session/destroy'
  resources :users, except: [:new]

  get 'signup', to: 'users#new', as: :signup
  get 'login', to: 'session#new'
  post 'login', to: 'session#create'
  get 'logout', to: 'session#destroy'

  resources :posts, except: [:index], path: "/"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/home', to: 'welcome#home'
end
