Rails.application.routes.draw do
  root to: 'root#index', as: 'index'
  post '/memo', to: 'root#memo', as: 'memo'
end
