Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  root to: 'home#index'
  
  get '/driver', to: 'driver#status'
  post '/driver', to: 'driver#update_status'
  
  get '/rider', to: 'rider#query'
  post '/rider', to: 'rider#save_ride'
end
