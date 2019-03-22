Rails.application.routes.draw do

  root 'answers#index'

  
  resources :answers



end
