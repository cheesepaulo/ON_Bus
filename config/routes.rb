Rails.application.routes.draw do
  root to: 'home#index'

  get 'arrival_forecat/:stop_code', to: 'home#arrival_forecast', as: :arrival_forecast
end
