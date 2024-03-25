class ReviewsController < ApplicationController

  def new
    @review = Review.new
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

  def create
    @review = Review.new(params[:id])
    if @review.save
      redirect_to restaurant_path(@restaurant)
    else
      render "restaurants/show", status: :unprocessable_entity
    end
  end
  # def create
  #   @restaurant = Restaurant.find(params[:restaurant_id])
  #   @review = Review.new(review_params)
  #   @review.restaurant = @restaurant
  #     if @review.save
  #       redirect_to restaurant_path(@restaurant)
  #     else
  #       render "restaurants/show", status: :unprocessable_entity
  #     end
  # end

  # private

  # def review_params
  #   params.require(:review).permit(:rating, :content)
  # end
end
