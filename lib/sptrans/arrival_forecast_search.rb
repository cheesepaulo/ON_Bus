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
        response = @client.get "#{API_URL}/Previsao/Parada?codigoParada=#{stop_code}", {}
        JSON.parse(response.body)
      rescue Exception => e
        puts e.message
        puts e.backtrace.inspect
      end
    end

    def self.getBusPosition(line_code)
    # Receives a line and returns a list with all vehicles and their lat / long positions
    begin
        @client = HTTPClient.new
        SPTrans.connect(@client)
        response = @client.get "#{API_URL}/Posicao?codigoLinha=#{line_code}", {}
        return JSON.parse(response.body)
      rescue Exception => e
        puts e.message
        puts e.backtrace.inspect
      end
    end
  end
end
