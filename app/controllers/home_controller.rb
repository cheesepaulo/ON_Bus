require 'sptrans/arrival_forecast_search'

class HomeController < ApplicationController
  def arrival_forecast
    response = SPTrans::ArrivalForecastSearch.new.call(params[:stop_code])

    render json: response
  end
end
