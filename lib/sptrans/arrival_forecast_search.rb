require './lib/sptrans/api_connection'

module SPTrans
  class ArrivalForecastSearch
    def initialize
      @client = HTTPClient.new
      SPTrans.connect(@client)
    end

    def getUpcomingBus(stop_code)
      # Recebe um ponto de parada e retorna uma lista com a previsão
      # de chegada dos veículos até aquele ponto.
      begin
        response = @client.get "#{ENV['API_URL']}/Previsao/Parada?codigoParada=#{stop_code}", {}
        JSON.parse(response.body)
      rescue => e
        puts e.message
        puts e.backtrace.inspect
      end
    end

    def getBusPosition(line_code)
      # Receives a line and returns a list with all vehicles and their lat / long positions
      begin
        response = @client.get "#{ENV['API_URL']}/Posicao?codigoLinha=#{line_code}", {}
        return JSON.parse(response.body)
      rescue => e
        puts e.message
        puts e.backtrace.inspect
      end
    end

    def getStopPointsByline(line_code)
      # Receives a line and returns a list with all Stop Points
      begin
        response = @client.get "#{ENV['API_URL']}/Parada/BuscarParadasPorLinha?codigoLinha=#{line_code}", {}
        return JSON.parse(response.body)
      rescue => e
        puts e.message
        puts e.backtrace.inspect
      end
    end

    def searchByTerm(line_code)
      begin
        response = @client.get "#{ENV['API_URL']}/Linha/Buscar?termosBusca=#{line_code}", {}
        return JSON.parse(response.body)
      rescue => e
        puts e.message
        puts e.backtrace.inspect
      end
    end

    def getArrivalForecast(stop_code, line_code)
      begin
        response = @client.get "#{ENV['API_URL']}/Previsao?codigoParada=#{stop_code}&codigoLinha=#{line_code}", {}
        return JSON.parse(response.body)
      rescue => e
        puts e.message
        puts e.backtrace.inspect
      end
    end
  end
end
