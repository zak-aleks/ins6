Rails.application.routes.draw do


   devise_for :users
   get 'home/index'
   root to: 'home#index'
   get "/posts" => "posts#show"
   get "posts/new" => "posts#new"
   get '/followees' => 'follows#show'
   get '/allusers' => 'users#index'
   post '/users/:id/follow', to: "users#follow", as: "follow_user"
   post '/users/:id/unfollow', to: "users#unfollow", as: "unfollow_user"
   resources :comments, only: [:create]
   resources :users, only: [:show, :edit, :update] do
     resources :follows
   end
     resources :posts, only: [:new, :create, :show] do
     resources :likes
   end

end
