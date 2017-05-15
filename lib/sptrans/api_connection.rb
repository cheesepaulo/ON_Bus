module SPTrans
  API_URL = "http://api.olhovivo.sptrans.com.br/v0"
  TOKEN = "5e20a6e514afa82121420017cbaf867bc2fca8b13c30f76b3c179f42f10ae486"

  def self.connect(client)
    begin
      client.post("#{API_URL}/login/autenticar?token=#{TOKEN}", {})
    rescue Exception => e
      puts e.message
      puts e.backtrace.inspect
    end
  end
end
