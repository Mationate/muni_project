Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :proyects do
    resources :feedbacks, only: :create
  end
  devise_for :municipalities
  devise_for :users
  root 'proyects#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
