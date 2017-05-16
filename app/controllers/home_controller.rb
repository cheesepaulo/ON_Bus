require 'json'


class HomeController < ApplicationController
  # Calling API function to retrieve the buses position of a line
  def bus_position
     binding.pry
    if params[:cod_line].present?
      response = SPTrans::ArrivalForecastSearch::getBusPosition(params[:cod_line])
      puts response
      render json: response
    end
  end
end
