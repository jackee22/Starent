class ReservationsController < ApplicationController
  def new
    @star = Star.find(params[:star_id])
    authorize @star
    @user = current_user
    @reservation = Reservation.new
  end

  def create
    @reservation = Reservation.new(reservation_params)
    @star = Star.find(params[:star_id])
    @user = current_user
    authorize @star
    @reservation.user = @user
    @reservation.star = @star
    if @reservation.save
      redirect_to root_path
    else
      render :new
    end
  end

  def update
  end

  def destroy
  end

  def index
  end

  def show
  end

  def edit
  end

  def reservation_params
    params.require(:reservation).permit(:end_time, :start_time)
  end
end
