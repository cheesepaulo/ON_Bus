require 'json'


class HomeController < ApplicationController
  # Calling API function to retrieve the buses position of a line
  def getBusPosition
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

  def getArrivalForecast
    if params[:stop_code, :line_code].present?
      response = SPTrans::ArrivalForecastSearch.new.getArrivalForecast(params[:stop_code, :line_code])
      render json: response
    end
  end

  def getUpcomingBus
    if params[:stop_code].present?
      response = SPTrans::ArrivalForecastSearch.new.getUpcomingBus(params[:stop_code])
      render json: response
    end
  end

  def searchByTerm
    if params[:search_term].present?
      response = SPTrans::ArrivalForecastSearch.new.searchByTerm(params[:search_term])
      render json: response
    end
  end
end
