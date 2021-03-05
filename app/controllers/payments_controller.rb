class PaymentsController < ApplicationController
  def new
    booking = Booking.find(params[:booking_id])

    session = Stripe::Checkout::Session.create(
      payment_method_types: ['card'],
      line_items: [{
        name: "#{booking.service.title} - #{booking.service.provider.name}",
        images: [Cloudinary::Utils.cloudinary_url(booking.service.provider.photos.first.key)],
        amount: booking.service.price_cents,
        currency: 'ars',
        quantity: 1
        }],
        success_url: bookings_url,
        cancel_url: bookings_url,
        )

        booking.update(checkout_session_id: session.id)
        @booking = current_user.bookings.find(params[:booking_id])
  end
end
