require 'open-uri'

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
    @provider.services.first.icon.attach(io: URI.open('https://res.cloudinary.com/dmtio0viw/image/upload/v1613522761/Turna/haircut_and_beard_fs3clq.webp'), filename: 'haircut.png', content_type: 'image/png')

    if @provider.services.first
      if @provider.services.first.title == "Corte y arreglo de barba"
        @provider.services.first.icon.attach(io: URI.open('https://res.cloudinary.com/dmtio0viw/image/upload/v1613522761/Turna/haircut_and_beard_fs3clq.webp'), filename: 'haircut.png', content_type: 'image/png')
      elsif @provider.services.first.title == "Corte de Pelo"
        @provider.services.first.icon.attach(io: URI.open('https://res.cloudinary.com/dmtio0viw/image/upload/v1613522760/Turna/haircut_hbf2ee.png'), filename: 'haircut.png', content_type: 'image/png')
      elsif @provider.services.first.title == "Color/Decoloracion"
        @provider.services.first.icon.attach(io: URI.open('https://res.cloudinary.com/dmtio0viw/image/upload/v1613522926/Turna/hair_color_s7vot7.png'), filename: 'haircut.png', content_type: 'image/png')
      end
    end

    if @provider.services.second
      if @provider.services.second.title == "Corte y arreglo de barba"
        @provider.services.second.icon.attach(io: URI.open('https://res.cloudinary.com/dmtio0viw/image/upload/v1613522761/Turna/haircut_and_beard_fs3clq.webp'), filename: 'haircut.png', content_type: 'image/png')
      elsif @provider.services.second.title == "Corte de Pelo"
        @provider.services.second.icon.attach(io: URI.open('https://res.cloudinary.com/dmtio0viw/image/upload/v1613522760/Turna/haircut_hbf2ee.png'), filename: 'haircut.png', content_type: 'image/png')
      elsif @provider.services.second.title == "Color/Decoloracion"
        @provider.services.second.icon.attach(io: URI.open('https://res.cloudinary.com/dmtio0viw/image/upload/v1613522926/Turna/hair_color_s7vot7.png'), filename: 'haircut.png', content_type: 'image/png')
      end
    end

    if @provider.services.third
      if @provider.services.third.title == "Corte y arreglo de barba"
        @provider.services.third.icon.attach(io: URI.open('https://res.cloudinary.com/dmtio0viw/image/upload/v1613522761/Turna/haircut_and_beard_fs3clq.webp'), filename: 'haircut.png', content_type: 'image/png')
      elsif @provider.services.third.title == "Corte de Pelo"
        @provider.services.third.icon.attach(io: URI.open('https://res.cloudinary.com/dmtio0viw/image/upload/v1613522760/Turna/haircut_hbf2ee.png'), filename: 'haircut.png', content_type: 'image/png')
      elsif @provider.services.third.title == "Color/Decoloracion"
        @provider.services.third.icon.attach(io: URI.open('https://res.cloudinary.com/dmtio0viw/image/upload/v1613522926/Turna/hair_color_s7vot7.png'), filename: 'haircut.png', content_type: 'image/png')
      end
    end

    if @provider.save
      redirect_to home_path
    else
      render :new
    end

  end


  private

  def provider_params
    params.require(:provider).permit(:name, :description, :address, :category, :rating, :neighborhood, :opening_time, :closing_time, photos: [], services_attributes: [ :title, :price, :min_duration ])
  end

  def set_provider
    @provider = Provider.find(params[:id])
  end
end
