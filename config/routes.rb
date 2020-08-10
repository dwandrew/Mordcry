Rails.application.routes.draw do
  
  devise_for :users, controllers: {omniauth_callbacks: "omniauth_callbacks"}
  devise_scope :user do
  get '/users/sign_out' => 'devise/sessions#destroy'
  end
  root 'static#home'
  get '/rules' => 'static#rules'

  get "/warbands/add_to_warband" => 'warbands#add_to_warband'
  post "/warbands/add_to_warband" => 'warbands#add_to_warband'

  resources :equipment
  resources :equipments
  resources :warriors
  resources :warbands
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
