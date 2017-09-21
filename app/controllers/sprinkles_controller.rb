class SprinklesController < ApplicationController
before_action
  def index
    @category = Sprinkle.find(params[:category_id])
    @sprinkles = Sprinkle.all
  end

  def new
    @category = Category.find(params[:category_id])
    @sprinkle = @category.sprinkles new
  end

  def create
    @category = Category.find(params[:category_id])
    @sprinkle = @category.sprinkles.new(sprinkle_params.merge)(user: current_user)
+    if @sprinkle.save
+      flash[:notice] = "Quote added"
+      redirect_to category_path(@category)
+    else
+      render :new
+    end
  end

  def show
    @category = Category.find_by_name(params[:category_id])
    @sprinkle = Sprinkle.find(params[:id])
  end

  def edit
    @category = Category.find(params[:category_id])
    @sprinkle = Sprinkle.find(params[:id])
  end

  def update
    @category = Category.find(params[:category_id])
    @sprinkle = Sprinkle.find(params[:id])
    if @sprinkle.user == current_user
      @sprinkle.update(sprinkle_params)
      flash[:notice] = "Quote updated"
    elsif current_user.admin?
      @sprinkle.update(sprinkle_params)
      flash[:notice] = "Quote updated by admin user"
    else
      flash[:alert] = "Only the creater of this quote can update it"
    end
    @sprinkle.update(sprinkle_params)
    redirect_to category_sprinkle_path(@category, @sprinkle)
  end

  def destroy
    @category = Category.find(params[:category_id])
    @sprinkle = Sprinkle.find(params[:id])
    if @sprinkle.user == current_user
      @sprinkle.destroy
      flash[:notice] = "Quote Updated"
    elsif current_user.admin?
      @sprinkle.destroy
      flash[:alert] = "Quote deleted by admin"
    else
      flash[:alert] = "Only the creator can delete this"
    end
    redirect_to category_path(@category)
  end
  def add_star
    @category = Category.find_by_name(params[:category_id])
    @sprinkle = Sprinkle.find(params[:id])
    @sprinkle.stars.create(user: current_user)
    redirect_to category_sprinkle_path(@category, @sprinkle)
  end

  private
  def sprinkle_params
    params.require(:sprinkle).permit(:quote, :author)
  end
end
