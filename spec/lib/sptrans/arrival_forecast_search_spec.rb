require 'rails_helper'
require 'sptrans/arrival_forecast_search'

describe SPTrans::ArrivalForecastSearch do
  before do
    @api = SPTrans::ArrivalForecastSearch.new
  end
  describe '#getUpcomingBus' do
    it "returns a hash with data" do
      response = @api.getUpcomingBus("4200953")

      expect(response.class).to eq Hash
      expect(response).to_not be_empty
    end
  end

  describe '#getBusPosition' do
    it "returns a hash with data" do
      response = @api.getBusPosition("175T-10")

      expect(response.class).to eq Hash
      expect(response).to_not be_empty
    end
  end

  describe '#getStopPointsByline' do
    it "returns a hash with data" do
      response = @api.getStopPointsByline("175T-10")

      expect(response.class).to eq Hash
      expect(response).to_not be_empty
    end
  end

  describe '#searchByTerm' do 
    it 'returns a hash with data' do
      json = JSON.parse(File.read("./spec/fixtures/terms_list.json"))
      term = json['terms_list'].sample()
      puts term
      response = @api.searchByTerm(term)

      expect(response.class). to eq Array
      expect(response).to_not be_empty
    end
  end
end
