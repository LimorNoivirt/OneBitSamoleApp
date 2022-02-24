Rails.application.routes.draw do
  get 'users/new'
  get 'static_pages/user_guide'
  get 'static_pages/skus'
  resources :users
  root 'static_pages#home'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
