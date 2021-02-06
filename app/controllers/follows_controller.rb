class FollowsController < ApplicationController
  def index
    @user  = User.find(params[:user_id])
  end

  def show
  @user  = User.find(params[:user_id])
  end
end
