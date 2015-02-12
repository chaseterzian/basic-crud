class FoodsController < ApplicationController

  def index
    @foods = Food.all
  end

  def new
    @food = Food.new
  end

  def create
    @food = Food.new(food_params)
    respond_to do |format|
    @food.save
    format.html { redirect_to foods_path }
    end
  end

  def edit
    @food = Food.find(params[:id])
  end

  def update
    @food = Food.find(params[:id])
    respond_to do |format|
    @food.update(food_params)
    format.html { redirect_to foods_path }
    end
  end

  def show
    @food = Food.find(params[:id])
  end

  def destroy
    @food = Food.find(params[:id])
    respond_to do |format|
    @food.destroy
    format.html { redirect_to foods_path }
    end
  end


  private

  def food_params
      params.require(:food).permit(:description, :best_ingredient, :rating, :tried)
  end

end
