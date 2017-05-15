Rails.application.routes.draw do
  root to: 'home#index'
  get 'posicao_veiculos', to: 'home#posicao_veiculos'
end
