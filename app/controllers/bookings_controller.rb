class BookingsController < ApplicationController
  def create
    @booking = Booking.new(bookings_params)
    @provider = Provider.find(params[:provider_id])
    @booking.customer = current_user
    @booking.provider = @provider
    @booking.status = "accepted"
    if @booking.save
      redirect_to root_path
    else
      @provider = Provider.all
      render "providers/show"
    end
  end

  def index
    @bookings = Booking.where(customer: current_user)
    @bookings_pending = []
    @accepted_bookings = []
    @canceled_bookings = []



  end

  def update
  end

  private

  def bookings_params
    params.require(:booking).permit(:start_datetime, :end_datetime, :status)
  end
end
