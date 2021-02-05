class UsersController < ApplicationController
  before_action :authenticate_user!
  before_action :set_user, only: [:show]

    def index
    @posts = Post.all
    end


    def show
    @user  = User.find(params[:id])
    @posts = @user.posts.order(created_at: :desc)
    end


    def edit
    @user = User.find(params[:id])
    end

    def update
    current_user.update(user_params)
    redirect_to current_user
    end

    def set_user
      @user = User.find_by_id(params[:id])
    end

  private

    def user_params
    params.require(:user).permit(:username, :first_name, :last_name, :email, :image, :image_cache)
    end
end
