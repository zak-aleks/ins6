Rails.application.routes.draw do

  devise_for :users
  get 'home/index'
   root to: 'home#index'
   get "/posts" => "posts#show"
   get "posts/new" => "posts#new"
   post "follow/user" => "users#follow_user", as: :follow_user

   resources :users, only: [:show, :edit, :update]
   resources :posts, only: [:new, :create, :show] do
     resources :likes
   end

end
