class PostsController < ApplicationController

def new
@post = Post.new
end

def create
@post = Post.new(post_params)
if @post.save
redirect_to dash_path, flash: {success: "Post was created"}
else
render :new, flash: {alert: "Some errors"}

end

end

def show
end

private

def post_params
params.require(:post).permit(:image, :image_cache, :description,:user_id)
end
end
