class StarsController < ApplicationController
  before_action :authenticate_user!

  def index
    @stars = current_user.stars.order("created_at DESC")
    @sprinkles = current_user.sprinkles
end
