class BookingsController < ApplicationController
  before_action :set_booking, only: :update
  before_action :change_status, only: :index

  def create
    @booking = Booking.new(bookings_params)
    @provider = Provider.find(params[:provider_id])
    @service = Service.find(params["booking"]["service_id"])
    @booking.customer = current_user
    @booking.status = "accepted"
    @booking.service = @service
    if @service.min_duration == 30
      time_duration = 0.5.hour
    else
      time_duration = 1.hour
    end
    @booking.end_datetime = @booking.start_datetime + time_duration
    if @booking.save
      UserMailer.thankyou(@booking.customer, @booking, @provider).deliver_now
      redirect_to bookings_path
    else
      @provider = Provider.all
      render "providers/show"
    end
  end

  def index
    @bookings = Booking.where(customer: current_user)

    @accepted = @bookings.where(status: "accepted")
    @completed = @bookings.where(status: "completed")
    @canceled = @bookings.where(status: "canceled")
  end

  def update
    set_booking
    @booking.update(bookings_params)
    @booking.status == "canceled"
    @provider = @booking.service.provider
    UserMailer.cancel(@booking.customer, @booking, @provider).deliver_now
    redirect_to bookings_path
  end

  private

  def change_status
    @bookings = Booking.where(status: "accepted")
    @bookings.each do |booking|
      if booking.start_datetime - Time.zone.now < 0
        booking.status = "completed"
        booking.save
      end
    end
  end

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def bookings_params
    params.require(:booking).permit(:start_datetime, :end_datetime, :status)
  end
end
