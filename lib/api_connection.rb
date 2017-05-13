require 'rest-client'
require 'json'

module APIConnection
  def self.connect
    token = "5e20a6e514afa82121420017cbaf867bc2fca8b13c30f76b3c179f42f10ae486"
    begin
      RestClient::Request.execute(method: :post, url: "http://api.olhovivo.sptrans.com.br/v0/Login/Autenticar?token=#{token}")
    rescue
     "Problema na conexão"
    end
  end
end
