Rails.application.routes.draw do
  resources :productos, :controller => 'products'

  resources :integrantes, :controller => 'staffs'

  resources :peluquerias, :controller => 'barbershops'

  devise_for :users
  root 'home#index'
end
