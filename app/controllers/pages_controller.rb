class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :contact, :about, :introduction, :send_provider ]

  def home
    @providers = Provider.all.order(rating: :desc).limit(4)
  end

  def contact
  end

  def about
  end

  def introduction
  end

  def send_provider
    UserMailer.provider_alta(params["abc"]["name"], params["abc"]["category"], params["abc"]["address"], params["abc"]["description"]).deliver_later
    redirect_to home_path
  end
end
