Rails.application.routes.draw do

  resources :sessions, only: [ :index, :new ]

  root 'sessions#index'

end
