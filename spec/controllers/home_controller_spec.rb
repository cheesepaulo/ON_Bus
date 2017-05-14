require 'rails_helper'

RSpec.describe HomeController, type: :controller do
  describe 'GET #index' do
    it 'returns http success' do
      get :index
      expect(response.status).to eq(200)
    end
  end

  describe 'GET #arrival_forecast' do
    subject { get :arrival_forecast, params: { stop_code: 123 } }

    it { is_expected.to have_http_status :ok }
  end
end
