class StarsController < ApplicationController
  before_action :set_star, only: [:show, :edit, :update, :destroy]

  def index
    # @stars = Star.all
    @stars = policy_scope(Star).order(created_at: :desc)
  end

  def show
    @review = Review.new(star: @star)
    @reviews = @star.reviews
  end

  def new
    @star = Star.new
    authorize @star
  end

  def create
    @star = Star.new(star_params)
    authorize @star
    @user = current_user
    @star.user = @user
    if @star.save
      redirect_to star_path(@star)
    else
      render :new
    end
  end

  def edit
  end

  def update
    @star.update(star_params)
    if @star.save
      redirect_to star_path(@star)
    else
      render :new
    end
  end

  def destroy
    @star.destroy
    redirect_to stars_path
  end

  private

  def set_star
    @star = Star.find(params[:id])
    authorize @star
  end

  def star_params
    params.require(:star).permit(:name, :country, :city, :category, :price, :photo)
  end
end
