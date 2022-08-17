class ReviewsController < ApplicationController

  def index
    @restaurant = Restaurant.find(params[:restaurant_id])
    @reviews = Review.where(restaurant_id: @restaurant)
  end

  def new
    @review = Review.new
  end

  def create
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new(review_params)
    @review.restaurant = @restaurant
    @review.save
    if @review.save
      redirect_to restaurant_path(@restaurant)
    else
      render 'restaurants/show', status: :unprocessable_entity
    end
  end

  private

  def set_restaurant
    @review = Review.find(params[:id])
  end

  # GUARDA FORMULARIO

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
