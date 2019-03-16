Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :proyects do
    resources :feedbacks, only: :create
  end
  # resources :feedbacks, only: [] do 
  #   resources :answers, only: :create
  # end

  devise_for :municipalities, path: 'municipalities', controllers: {
    sessions: 'municipalities/sessions',
    registrations: 'municipalities/registrations'
  }
  devise_for :users, path: 'users', controllers: {
    omniauth_callbacks: 'users/omniauth_callbacks',
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }
  root 'proyects#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
