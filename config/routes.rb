Rails.application.routes.draw do
  root to: 'home#index'

  get 'bus_position', to: 'home#getBusPosition'
  get 'getStopPointsByline', to: 'home#getStopPointsByline'
  get 'getArrivalForecast', to: 'home#getArrivalForecast'
  get 'getUpcomingBus', to: 'home#getUpcomingBus'
  get 'searchByTerm', to: 'home#searchByTerm'
end
