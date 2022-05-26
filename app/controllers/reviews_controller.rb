class ReviewsController < ApplicationController
  def new
    @star = Star.find(params[:star_id])
    @review = Review.new
    @review.star = @star
    authorize @review
  end

  def create
    @review = Review.new(review_params)
    @star = Star.find(params[:star_id])
    @user = current_user
    @review.star = @star
    @review.user = @user
    authorize @review
    # @review.save!
    # raise
    if @review.save
      redirect_to star_path(@star)
    else
      render :new
    end
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating, :user_id, :star_id)
  end
end
