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

  def pending_providers
    if current_user.admin
      @providers = Provider.all
      
      @active = @providers.where(status: true)
      @pending = @providers.where(status: false)
    else
      flash[:alert] = 'Solo admins :)'
      redirect_to root_path
    end
  end
end
