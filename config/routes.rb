Rails.application.routes.draw do

  root 'game#index'

  
  resources :answers, only: [:index, :new, :create, :destroy, :m8ball]


  get 'game(/m8ball)', to: 'answers#m8ball'



end
