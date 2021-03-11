class ProvidersController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index, :show ]
  before_action :set_provider, only: [ :show, :update ]

  def index
    @search = Provider.with_geocode.where("neighborhood @@ '%#{params[:localidad]}%'").where(category: params[:categoria], status: true).ransack(params[:q])

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

  def new
    @provider = Provider.new
    3.times do
      @provider.services.build
    end
  end

  def create
    @provider = Provider.new(provider_params)
    @provider.rating = 0

    if @provider.services.first
      helpers.check_first_service(@provider)
    end

    if @provider.services.second
      helpers.check_second_service(@provider)
    end

    if @provider.services.third
      helpers.check_third_service(@provider)
    end

    if @provider.save
      redirect_to home_path
    else
      render :new
    end
  end

  def update
    @provider.status = !@provider.status
    @provider.save!
    redirect_to pending_providers_path
  end

  private

  def provider_params
    params.require(:provider).permit(:name, :description, :address, :category, :rating, :neighborhood, :opening_time, :closing_time, photos: [], services_attributes: [ :title, :price, :min_duration ])
  end

  def set_provider
    @provider = Provider.find(params[:id])
  end
end
