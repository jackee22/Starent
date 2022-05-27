class ReservationsController < ApplicationController
  before_action :set_reservation, only: [ :edit, :update, :destroy ]
  def new
    @star = Star.find(params[:star_id])
    # authorize @star
    @user = current_user
    @reservation = Reservation.new
  end

  def create
    @reservation = Reservation.new(reservation_params)
    @star = Star.find(params[:star_id])
    @user = current_user
    # authorize @star
    @reservation.user = @user
    @reservation.star = @star
    if @reservation.save
      redirect_to reservations_path
    else
      render :new
    end
  end

  def update
    @reservation.update(reservation_params)
    if @reservation.save
      redirect_to reservations_path
    else
      render :new
    end
  end

  def destroy
    @reservation.destroy
    redirect_to reservations_path
  end

  def index
  end

  def show
  end

  def edit
  end

  private

  def set_reservation
    @reservation = Reservation.find(params[:id])
    @star = @reservation.star
    authorize @reservation
  end

  def reservation_params
    params.require(:reservation).permit(:end_time, :start_time)
  end
end
