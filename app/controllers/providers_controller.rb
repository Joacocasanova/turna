class ProvidersController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index, :show ]
  before_action :set_provider, only: [ :show ]

  def index
    @search = Provider.with_geocode.where("neighborhood @@ '%#{params[:localidad]}%'").where(category: params[:categoria]).ransack(params[:q])

    @providers = @search.result

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
