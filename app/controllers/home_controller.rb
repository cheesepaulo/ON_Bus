require 'json'


class HomeController < ApplicationController
  # Calling API function to retrieve the buses position of a line
  def getUpcomingBus
    if params[:cod_line].present?
      response = SPTrans::ArrivalForecastSearch.new.getBusPosition(params[:cod_line])
      render json: response
    end
  end

  def getStopPointsByline
    if params[:cod_line].present?
      response = SPTrans::ArrivalForecastSearch.new.getStopPointsByline(params[:cod_line])
      render json: response
    end
  end
end
