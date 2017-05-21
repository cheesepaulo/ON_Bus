module SPTrans
  def self.connect(client)
    begin
      client.post("#{ENV['API_URL']}/login/autenticar?token=#{ENV['TOKEN']}", {})
    rescue => e
      puts e.message
      puts e.backtrace.inspect
    end
  end
end
