Rails.application.routes.draw do
  root 'home#index' #enables :root 

  post 'login' => 'home#login', as: 'login'
  get 'logout' => 'home#logout', as: 'logout'
  post 'signup' => 'home#signup', as: 'signup'

  resources :comments
  resources :posts
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
