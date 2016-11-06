Rails.application.routes.draw do
  devise_for :users
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  root 'home#index'

  resources :comments
  resources :images
  resources :messages
  resources :presentations
  resources :videos

  get '/galeria' => 'images#index', as: 'gallery'
  get '/terminos' => 'home#terms', as: 'terms'
  get '/subir_imagen' => 'images#new', as: 'upload_img'
  post '/create_message' => 'messages#create', as: 'create_message'
  post '/create_comment' => 'comments#create', as: 'create_comment'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
