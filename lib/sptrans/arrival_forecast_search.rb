require 'sptrans/api_connection'

module SPTrans
  class ArrivalForecastSearch
    def initialize
      @client = HTTPClient.new
      SPTrans.connect(@client)
    end

    def call(stop_code)
      response = @client.get(
        "#{API_URL}/Previsao/Parada",
        { codigoParada: stop_code }
      )

      JSON.parse(response.body)
    end
  end
end
