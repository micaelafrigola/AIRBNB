class ReservationsController < ApplicationController
  before_action :set_flat, only: %i[ show edit update ]

  def index
    @reservations = Reservation.all
    # authorize @reservation
  end

  def show

  end

  def new
    @flat = Flat.find(params[:flat_id])
    @reservation = Reservation.new
    authorize @reservation
  end

  def create
    @reservation = Reservation.new(reservation_params)
    authorize @reservation
    @reservation.flat = @flat
    @reservation.save
    redirect_to flats_path
  end

  def edit
  end

  def update
  end

  private

  def set_flat
    @flat = Flat.find(params[:flat_id])
    authorize @flat
  end

  def reservation_params
    params.require(:reservation).permit(:start_date, :end_date, :num_of_guests)
  end

end
