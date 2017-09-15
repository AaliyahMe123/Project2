class SprinklesController < ApplicationController
  def index
    @sprinkles = Sprinkle.all
  end

  def show
    @sprinkle = Sprinkle.find(params[:id])
  end

  def edit
  end

  def new
    @sprinkle = Sprinkle.new
  end

  def create
  end

  def destroy
  end

  private
  def sprinkle_params
    params.require(:sprinkle).permit(:quote, :character,:show)
  end
  
end
