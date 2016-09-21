Rails.application.routes.draw do
  devise_for :users
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  root 'home#index'

  resources :images
  resources :presentations

  get '/geleria' => 'images#index', as: 'gallery'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
