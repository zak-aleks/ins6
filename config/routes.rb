Rails.application.routes.draw do
  devise_for :users
  get 'home/index'
   root to: 'home#index'
   get "/posts" => "posts#show"
   get "/profile" => "users#index"
   resources :posts, only: [:new, :show, :create]
   resources :users, only: [:show]
end
