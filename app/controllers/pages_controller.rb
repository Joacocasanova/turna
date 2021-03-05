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
end
