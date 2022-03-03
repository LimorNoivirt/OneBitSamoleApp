Rails.application.routes.draw do
  get 'password_resets/new'
  get 'password_resets/edit'
  
  root 'static_pages#home'
  get 'sessions/new'
  get 'signup' => 'users#new'
  get 'userguide' => 'static_pages#user_guide'
  get 'skus' => 'static_pages#skus'

  get 'login' => 'sessions#new'        #login
  post 'login' => 'sessions#create'    
  delete 'logout' => 'sessions#destroy'   
  get 'logout' => 'sessions#destroy' 

  resources :users
  resources :account_activations, only: [:edit]
  resources :password_resets, only: [:new, :create, :edit, :update]
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
