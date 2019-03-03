Rails.application.routes.draw do
  resources :proyects
  devise_for :municipalities
  devise_for :users
  root 'proyects#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
