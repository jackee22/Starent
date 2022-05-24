class StarsController < ApplicationController
  before_action :set_star, only: [:show, :edit, :update, :destroy]

  def index
    # @stars = Star.all
    @stars = policy_scope(Star).order(created_at: :desc)
  end

  def show
  end

  def new
    @star = Star.new
    authorize @star
  end

  def create
    @star = Star.new(star_params)
    authorize @star
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
    redirect_to star_path(@star)
  end

  def destroy
    @star.destroy
    redirecth_to stars_path
  end

  private

  def set_star
    @star = Star.find(params[:id])
    authorize @star
  end

  def star_params
    params.require(:star).permit(:name, :country, :city, :category, :price)
  end
end
