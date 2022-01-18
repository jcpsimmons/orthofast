Rails.application.routes.draw do
  get 'foods/:restriction_code', to: 'foods#show', as: 'foods'

  get 'fasting_days/index'
  get '/', to: 'fasting_days#index', as: 'root'
  get '/:date', to: 'fasting_days#show'
end
