class PostsController < ApplicationController

  def new
    @post = Post.new
  end

  def create
      @post = Post.new(post_params)
      if @post.save
        redirect_to profile_path, flash[:notice] = "Post successfully created"
      else
        redirect_to new_post_path, flash: {alert: "Some errors"}

      end
  end

  def show
    @posts = Post.all
  end

  private

  def post_params
    params.require(:post).permit(:image, :image_cache, :description)
  end
end
