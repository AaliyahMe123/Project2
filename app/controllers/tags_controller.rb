class TagsController < ApplicationController
  def new
    @sprinkle = Sprinkle.find(params[:sprinkle_id])
    @tag = @sprinkle.tags.new
  end

  def create
    @sprinkle = Sprinkle.find(params[:sprinkle_id])
    @category = Category.find_by(name: params[:category_name])
    existing_tag = Tag.find_by(sprinkle: @sprinkle, category: @category)
    unless existing_tag
      @sprinkle.tags.create(category: @category)
    end
    redirect_to sprinkle_path(@sprinkle)
  end 
end
