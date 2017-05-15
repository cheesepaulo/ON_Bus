require 'json'

class HomeController < ApplicationController

  def posicao_veiculos
    if params[:linha].present?
      retorno = APIPosicao::posicao_veiculos params[:linha]
      @hr_ref = JSON.parse(retorno)['hr']
      @veiculos =  JSON.parse(retorno)['vs']

      render json: response
    end
  end
end
