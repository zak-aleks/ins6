Rails.application.routes.draw do
  devise_for :users
  get 'home/index'
   root to: 'home#index'
   get "/posts" => "posts#show"
   resources :posts, only: [:new, :show, :create]
end
