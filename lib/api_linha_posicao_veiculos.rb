require 'httpclient'
require 'json'

module APIPosicao
  def self.connect client
    token = "5e20a6e514afa82121420017cbaf867bc2fca8b13c30f76b3c179f42f10ae486"
    begin
      client.post "http://api.olhovivo.sptrans.com.br/v0/login/autenticar?token=#{token}",{}
    rescue Exception => e
      puts "Problema na autenticacao."
      puts e.message
      puts e.backtrace.inspect
        # return "Problema na Consulta da Posição dos Veiculos - metodo posicao_veiculos #{cod_linha}"
    end
  end


  def self.posicao_veiculos cod_linha
    begin
      client = HTTPClient.new
      connect client
      # codigoLinha=1273
      response = client.get "http://api.olhovivo.sptrans.com.br/v0/Posicao?codigoLinha=#{cod_linha}", {}
      puts "Executou."
      puts response.body

      # value = JSON.parse(response.body) #['vs']
      return response.body
    rescue Exception => e
      puts "Problema na posicao_veiculos."
      puts e.message
      puts e.backtrace.inspect
        # return "Problema na Consulta da Posição dos Veiculos - metodo posicao_veiculos #{cod_linha}"
    end
  end
end
