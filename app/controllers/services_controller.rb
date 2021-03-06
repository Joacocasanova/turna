class ServicesController < ApplicationController
  def available_time_slots
    @service = Service.find(params[:id])
    @date = params[:date]
    @time_slots = @service.available_time_slots(@date)
    respond_to do |format|
      format.json {render json: {time_slots: @time_slots}}
    end
  end
end
