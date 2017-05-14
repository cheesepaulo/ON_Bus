Rails.application.routes.draw do
  root to: 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get 'posicao_veiculos', to: 'home#posicao_veiculos'
end
