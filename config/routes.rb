Rails.application.routes.draw do
  

  resources :testa
 
  get 'customers/index'

resources :customers, only: [:index]
  devise_for :users
  root 'dashboard#index'



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
