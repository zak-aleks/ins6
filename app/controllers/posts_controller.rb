class PostsController < ApplicationController

  def new
    @post = Post.new
  end

  def create
      @post = Post.new(post_params)
      if @post.save
        redirect_to posts_path, flash: {success: "Post was created"}
      else
        render :new, flash: {alert: "Some errors"}

      end
  end

  def show
    @posts = Post.all
  end

  private

  def post_params
    params.require(:post).permit(:image, :image_cache)
  end
end
