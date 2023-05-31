class ReservationsController < ApplicationController
  before_action :set_reservation, only: %i[show edit update]

  def index
    @reservations = policy_scope(Reservation)
  end

  def show
    @flat = @reservation.flat
  end

  def new

    @reservation = Reservation.new
    @flat = Flat.find(params[:flat_id])
    authorize @reservation
  end

  def create
    @reservation = Reservation.new(reservation_params)
    @reservation.user = current_user
    authorize @reservation
    @reservation.flat = Flat.find(params[:flat_id])

    if @reservation.save
      redirect_to reservations_path, notice: "Reservation was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
  end

  private

  def set_reservation
    @reservation = Reservation.find(params[:id])
    # @reservation.flat = Flat.find(params[:flat_id])
    authorize @reservation
  end

  def reservation_params
    params.require(:reservation).permit(:start_date, :end_date, :num_of_guests)
  end

end
