class BookingsController < ApplicationController
  before_action :set_booking, only: :update
  before_action :change_status, only: :index

  def create
    @booking = Booking.new(bookings_params)
    @provider = Provider.find(params[:provider_id])
    @service = Service.find(params["booking"]["service_id"])
    @booking.customer = current_user
    @booking.status = "accepted"
    @booking.payment_status = "pending"
    @booking.service = @service
    if @booking.save!
      UserMailer.thankyou(@booking.customer, @booking, @provider).deliver_later
      redirect_to bookings_path
    else
      @markers = [{
        lat: @provider.latitude,
        lng: @provider.longitude,
        infoWindow: render_to_string(partial: "providers/info_window", locals: { provider: @provider })
      }]
      @reviews = []
      @provider.bookings.each do |booking|
        if  booking.review != nil
          @reviews << booking.review
        end
      end
      @url = params[:url]
      redirect_to provider_path(@provider)
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
    UserMailer.cancel(@booking.customer, @booking, @provider).deliver_later
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
