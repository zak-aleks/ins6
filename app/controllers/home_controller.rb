class HomeController < ApplicationController
  before_action :authenticate_user!
  def index

    if current_user.followees.exists?
      @posts= Post.where(user_id: current_user.followees.pluck(:id)).order(created_at: :desc)
    else
     @posts=Post.none
  end
end
end
