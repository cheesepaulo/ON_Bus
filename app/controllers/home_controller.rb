require 'json'

class HomeController < ApplicationController

  def posicao_veiculos
    if params[:linha].present?
      retorno = APIPosicao::posicao_veiculos params[:linha]
      render json: retorno
    end
  end
end
