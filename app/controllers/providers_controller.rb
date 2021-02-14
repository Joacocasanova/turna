class ProvidersController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index, :show ]
  before_action :set_provider, only: [ :show ]

  def index
    @providers = Provider.geocoded

    # the `geocoded` scope filters only flats with coordinates (latitude & longitude)
    @markers = @providers.geocoded.map do |provider|
      {
        lat: provider.latitude,
        lng: provider.longitude
      }
    end
  end

  def show
    @provider_geo = @provider.geocode
    @markers = @provider_geo.map do |provider|
      {
        lat: @provider_geo[0],
        lng: @provider_geo[1],
      }
    end
    @booking = Booking.new
    #@flats_nearby = Flat.where( location: @flat.location ).where.not( id: @flat.id )
  end

  private

  def provider_params
    params.require(:provider).permit(:name, :description, :address, :category, :rating, photos: [])
  end

  def set_provider
    @provider = Provider.find(params[:id])
  end
end
