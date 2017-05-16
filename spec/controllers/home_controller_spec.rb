require 'rails_helper'

RSpec.describe HomeController, type: :controller do
  describe 'GET #index' do
    it 'returns http success' do
      get :index
      expect(response.status).to eq(200)
    end
  end

  describe 'GET #posicao_veiculos' do
    subject { get :bus_position, params: { stop_code: 123 } }

    xit 'return json sucess' do
      expectresponse.status.to eql(200)
    end
  end
end
