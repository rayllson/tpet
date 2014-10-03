Rails.application.routes.draw do
  root 'main#designations'
  resources :posts


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
  get 'main/posts'
  get 'main/info'
  get 'main/designations'
  get 'main/map'
  get 'main/visit_form'
  
  match 'queira_visitar' => 'main#visit_form',
                             via: [:get],
                             :as => 'queira_visitar'

  match 'confirmar_revisita/queira_visitar/:visit_form_id' => 'main#confirm_revisit',
                                                              via: [:post], 
                                                              :as => 'confirmar_revisita'
  
end