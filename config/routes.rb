Rails.application.routes.draw do
  resources :products

  resources :staffs

  resources :barbershops

  devise_for :users
  root 'home#index'
end
