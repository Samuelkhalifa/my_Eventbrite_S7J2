Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  #root
  root to: 'event#index'

  #controller_event
  resources :event

  #controller_user
  resources :user

end
