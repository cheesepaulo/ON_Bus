require 'sptrans/api_connection'

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
        response = @client.get "#{API_URL}/Previsao/Parada?codigoParada=#{stop_code}", {}
        JSON.parse(response.body)
      rescue Exception => e
        puts e.message
        puts e.backtrace.inspect
      end
    end

    def getBusPosition (line_code)
    # Recebe uma linha e retorna uma lista com todos os veículos e suas posições lat / long
      begin
        response = @client.get "#{API_URL}/Posicao?codigoLinha=#{line_code}", {}
        JSON.parse(response.body)
      rescue Exception => e
        puts e.message
        puts e.backtrace.inspect
      end
    end
  end
end
