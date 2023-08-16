class RestaurantsController < ApplicationController
  
  def index
    @restaurants = Restaurant.all
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    @restaurant.save
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  def restaurant_params
    params.require(:task).permit(:name, :address, :phoneCategory, :content)
  end
end
