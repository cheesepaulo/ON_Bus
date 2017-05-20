Rails.application.routes.draw do
  root to: 'home#index'

  get 'bus_position', to: 'home#getUpcomingBus'
  get 'getStopPointsByline', to: 'home#getStopPointsByline'
end
