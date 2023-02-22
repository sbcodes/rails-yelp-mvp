class RestaurantsController < ApplicationController
  def new
    @restaurant = Restaurant.new
  end

  def new_review
    @restaurant = Restaurant.find(params[:id])
    @review = Review.new
  end

  def index
    @restaurants = Restaurant.all
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    @restaurant.save!
    redirect_to restaurant_path(@restaurant)
  end

  def create_review
    @restaurant = params[:restaurant]
    @review = Review.new(review_params)
    @review.save!
    redirect_to review_path(@review)
  end

  def show
    @restaurant = Restaurant.find(params[:id])
    @reviews = Review.where(restaurant_id: params[:id])
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :phone_number, :category)
  end

  def review_params
    params.require(:review).permit(:rating, :content, :restaurant_id)
  end
end
