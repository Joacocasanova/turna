class ProvidersController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index, :show ]
  before_action :set_provider, only: [ :show ]

  def index
    @search = Provider.with_geocode.where("neighborhood @@ '%#{params[:localidad]}%'").where(category: params[:categoria]).ransack(params[:q])

    @providers = @search.result.page params[:page]
    @prices = []
    @markers = @providers.map do |provider|
      {
        lat: provider.latitude,
        lng: provider.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { provider: provider })
      }
    end
  end

  def show
    @markers = [{
        lat: @provider.latitude,
        lng: @provider.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { provider: @provider })
      }]
    @reviews = []
    @provider.bookings.each do |booking|
      if  booking.review != nil
        @reviews << booking.review
      end
    end
    @booking = Booking.new
    @url = params[:url]
  end

  private

  def provider_params
    params.require(:provider).permit(:name, :description, :address, :category, :rating, :neighborhood, photos: [])
  end

  def set_provider
    @provider = Provider.find(params[:id])
  end
end
