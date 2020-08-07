Rails.application.routes.draw do
  root 'static#home'
  get '/rules' => 'static#rules'
  get '/login' => 'users#login'
  post '/signin' => 'users#signin'
  resources :equipment
  resources :equipments
  resources :warriors
  resources :warbands
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
