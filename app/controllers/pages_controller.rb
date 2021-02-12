class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @providers.all.order(rating: :desc).limit(4)
  end
end
