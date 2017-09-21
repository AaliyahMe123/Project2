class UsersController < ApplicationController
  before_action :authenticate_user!

  def index
    @users = User.all
    @sprinkles = current_user.sprinkles.order("created_at DESC")
  end 
end
