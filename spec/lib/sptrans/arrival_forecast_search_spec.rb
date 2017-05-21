require 'rails_helper'
require 'sptrans/arrival_forecast_search'

describe SPTrans::ArrivalForecastSearch do
  before do
    @api = SPTrans::ArrivalForecastSearch.new
    @term = JSON.parse(File.read("./spec/fixtures/terms_list.json"))['terms_list'].sample()
    @stop_code  = JSON.parse(File.read("./spec/fixtures/stop_code_list.json"))['stop_code'].sample()
    @line_code  = JSON.parse(File.read("./spec/fixtures/line_code_list.json"))['line_code'].sample()
    @line_code2 = JSON.parse(File.read("./spec/fixtures/line_code_list2.json"))['line_code'].sample()
  end

  describe '#getUpcomingBus' do
    it "returns a hash with data" do
      response = @api.getUpcomingBus(@stop_code)

      expect(response.class).to eq Hash
      expect(response).to_not be_empty
    end
  end

  describe '#getBusPosition' do
    it "returns a hash with data" do
      response = @api.getBusPosition(@line_code)

      expect(response.class).to eq Hash
      expect(response).to_not be_empty
    end
  end

  describe '#getStopPointsByline' do
    it "returns a hash with data" do
      response = @api.getStopPointsByline(@line_code2)

      expect(response.class).to eq Array
      expect(response).to_not be_empty
    end
  end

  describe '#searchByTerm' do
    it 'returns a hash with data' do
      response = @api.searchByTerm(@term)

      expect(response.class).to eq Array
      expect(response).to_not be_empty
    end
  end

  describe '#getArrivalForecast' do
    it "returns a hash with data" do
      response = @api.getArrivalForecast(@stop_code, @line_code)

      expect(response.class).to eq Hash
      expect(response).to_not be_empty
    end
  end
end
