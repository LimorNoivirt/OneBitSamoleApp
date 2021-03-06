Rails.application.routes.draw do
  
  root 'static_pages#home'
  get 'sessions/new'
  get 'signup' => 'users#new'
  get 'userguide' => 'static_pages#user_guide'
  get 'skus' => 'static_pages#skus'

  get 'login' => 'sessions#new'        #login
  post 'login' => 'sessions#create'    
  delete 'logout' => 'session#destroy'   
  
  resources :users
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
