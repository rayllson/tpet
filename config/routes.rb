Rails.application.routes.draw do

  resources :posts

  root 'main#index'

  devise_for :users
    scope "/admin" do
      resources :users
      match 'confirmar_usuario/user/:user_id' => 'users#confirm_user', via: [:get, :post], :as => "confirmar_usuario"
  end

  resources :visit_forms
  resources :designations
  resources :localizations
  resources :congregations

  get 'main/index'
  get 'main/info'
  get 'main/designations'
  get 'main/map'
  get 'main/messages'
  get 'main/files'
  get 'main/visit_form'
  
end