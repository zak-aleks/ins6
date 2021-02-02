Rails.application.routes.draw do
  devise_for :users
  get 'home/index'
   root to: 'home#index'
   get "/dash" => "users#index"
   resources :posts, only: [:new, :show, :create]
end
