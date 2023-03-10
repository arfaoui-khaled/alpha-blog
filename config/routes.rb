Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # get 'pages/homepage', to: 'pages#homepage'
  root 'pages#homepage'
  get 'about', to: 'pages#about'

  resources :articles

  get 'signup', to: 'users#new'
  resources :users, except: [:new]

  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

  resources :categories, except: [:destroy]
  # Defines the root path route ("/")
  # root "articles#index"
end
