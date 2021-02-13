class ProvidersController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index, :show ]

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
  end
end
