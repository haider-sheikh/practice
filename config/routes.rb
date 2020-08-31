Rails.application.routes.draw do
  devise_for :people
  root to: 'home#index'

  resources :users, controller: 'home' ,except: :index
  get '/all_user', to: 'home#all_users'
end
