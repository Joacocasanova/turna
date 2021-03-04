class PaymentsController < ApplicationController
  def new
    @booking = current_user.bookings.find(params[:booking_id])
  end
end
