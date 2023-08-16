class ReviewsController < ApplicationController

  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review.restaurant_id = @restaurant.id
    @review.save

  end

  def show
    @restaurant = Restaurant.find(params[:restaurant_id])
  end


  def review_params
    params.require(:review).permit(:rating, :content)

  end
end
