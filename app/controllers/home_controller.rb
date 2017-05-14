require 'json'

class HomeController < ApplicationController

  def posicao_veiculos
    if !params[:linha].blank
      retorno = APIPosicao::posicao_veiculos params[:linha]
      @hr_ref = JSON.parse(retorno)['hr']
      @veiculos =  JSON.parse(retorno)['vs']
    end  
  end
end
