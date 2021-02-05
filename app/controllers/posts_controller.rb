class PostsController < ApplicationController
before_action :authenticate_user!
  def new
    @post = Post.new
  end


  def show
    @post = Post.find(params[:id])
  end


  def create
      @post = Post.new(post_params)
      @post.user_id = current_user.id if user_signed_in?
        if @post.save
          redirect_to current_user, flash: {success: "Post was created"}
        else
          render :new, flash: {alert: "Some errors"}
        end
  end


private

  def post_params
    params.require(:post).permit(:image, :image_cache, :description,:user_id)
  end
end
