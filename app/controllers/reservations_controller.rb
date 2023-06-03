class ReservationsController < ApplicationController
  before_action :set_reservation, only: %i[show edit update destroy]

  def index
    @reservations = policy_scope(Reservation)
  end

  def show
    @flat = @reservation.flat
  end

  def userflatreservation
    @flats = Flat.where(user_id: current_user)
    @reservations = Reservation.where(flat_id: @flats)
    authorize @reservations
    # authorize @flats
  end

  def accept
    @reservation = Reservation.find(params[:format])
    @reservation.update(status: true)
    redirect_to reservations_path, notice: "Reservation accepted!"
    authorize @reservation
  end

  def decline
    @reservation = Reservation.find(params[:format])
    @reservation.update(status: false)
    redirect_to reservations_path, notice: "Reservation declined!"
    authorize @reservation
  end

  def new
    @reservation = Reservation.new
    @flat = Flat.find(params[:flat_id])
    @reservation.flat = @flat
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
      @flat = Flat.find(params[:flat_id])
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    if @reservation.update(reservation_params)
      redirect_to reservations_path, notice: "Reservation was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @reservation.destroy
    redirect_to reservations_path, notice: "Reservation was successfully deleted."
  end

  private

  def set_reservation
    @reservation = Reservation.find(params[:id])
    # @reservation.flat = Flat.find(params[:flat_id])
    authorize @reservation
  end

  def reservation_params
    params.require(:reservation).permit(:start_date, :end_date, :num_of_guests, :status)
  end
end
