Rails.application.routes.draw do
  get 'fasting_days/index'
  get '/', to: 'fasting_days#index'
  get '/:date', to: 'fasting_days#show'
end
