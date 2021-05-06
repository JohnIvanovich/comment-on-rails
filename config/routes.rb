Rails.application.routes.draw do
  root 'comments#new'

  resources :comments, only: %i[ create ]
  get '/admin', to: 'comments#index'
end
