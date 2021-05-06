Rails.application.routes.draw do
  get '/', to: 'comments#index'
  get 'comments/create'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
