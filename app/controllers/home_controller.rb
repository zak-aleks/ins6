class HomeController < ApplicationController
  before_action :authenticate_user!
  def index
    @posts = Post.where(user_id: current_user.followees.pluck(:id)).order(created_at: :desc)
  end
end
