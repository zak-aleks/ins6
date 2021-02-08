class HomeController < ApplicationController
  before_action :authenticate_user!
  def index
    @posts = if current_user.followees.exists?
               Post.where(user_id: current_user.followees.pluck(:id)).order(created_at: :desc)
             else
               Post.none
             end
  end
end
