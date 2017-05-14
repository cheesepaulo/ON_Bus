require 'rails_helper'
require 'sptrans/arrival_forecast_search'

describe SPTrans::ArrivalForecastSearch do
  describe '#call' do
    it "returns a hash with data" do
      response = described_class.new.call("4200953")

      expect(response.class).to eq Hash
      expect(response).to_not be_empty
    end
  end
end
