class UsersController < ApplicationController
  before_action :authenticate_user!

  def index
    @posts = Post.all
  end


    def show
    @posts = current_user.posts.order(created_at: :desc)
  end



  def edit
  @user = User.find(params[:id])
  end

  def update
  current_user.update(user_params)
  redirect_to current_user
end

  private
  def user_params
    params.require(:user).permit(:username, :first_name, :last_name, :email)
  end
end
