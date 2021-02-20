class ProvidersController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index, :show ]
  before_action :set_provider, only: [ :show ]

  def index
    @providers = Provider.geocoded

    # the `geocoded` scope filters only flats with coordinates (latitude & longitude)
    @markers = @providers.geocoded.map do |provider|
      {
        lat: provider.latitude,
        lng: provider.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { provider: provider })
      }
    end
  end

  def show
    @providers = Provider.all
    @provider_geo = @provider.geocode
    @markers = @provider_geo.map do |provider|
      {
        lat: @provider_geo[0],
        lng: @provider_geo[1],
      }
    end
    @booking = Booking.new
    @review = Review.new
  end

  private

  def provider_params
    params.require(:provider).permit(:name, :description, :address, :category, :rating, :neighborhood, photos: [])
  end

  def set_provider
    @provider = Provider.find(params[:id])
  end
end
