Rails.application.routes.draw do
  root to: 'home#index'

  get 'bus_position', to: 'home#bus_position'
  get 'getStopPointsByline', to: 'home#getStopPointsByline'
end
