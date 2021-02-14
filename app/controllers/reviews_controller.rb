class ReviewsController < ApplicationController
  def new
    @booking = Booking.find(params[:booking_id])
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    # we need `booking_id` to associate review with corresponding booking
    @booking = Booking.find(params[:booking_id])
    @review.booking = @booking
    @review.user_id = current_user.id
    @review.save!
    redirect_to root_path
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
