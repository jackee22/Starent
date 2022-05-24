class ReviewsController < ApplicationController
  def new
    @star = Star.find(params[:star_id])
    @review = Review.new
    @review.star = @star
    authorize @review
  end

  def create
    @review = Review.new(review_params)
    @star = Restaurant.find(params[:star_id])
    @review.star = @star
    authorize @review
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
