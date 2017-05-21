require 'rails_helper'

RSpec.describe HomeController, type: :controller do
  describe 'GET #index' do
    it 'returns http success' do
      get :index
      expect(response.status).to eq(200)
    end
  end

  describe 'GET #getUpcomingBus' do
    subject { get :getUpcomingBus, params: { stop_code: 123 } }

    xit 'return json sucess' do
      expect(response.status).to eql(200)
    end
  end

  describe 'GET #getArrivalForecast' do
    xit 'return json success' do

    end
  end

  describe 'GET #searchByTerm' do
    subject { get :searchByTerm, params: { search_term: 8000 } }

    it 'return json sucess' do
      expect(response.status).to eql(200)
    end
  end

  describe 'GET #getStopPointsByline' do
    subject { get :getStopPointsByline, params: { search_term: 8000 } }

    it 'return json sucess' do
      expect(response.status).to eql(200)
    end
  end
end
