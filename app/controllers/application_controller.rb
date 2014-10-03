class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_filter :configure_devise_params, if: :devise_controller?

  def configure_devise_params
    devise_parameter_sanitizer.for(:sign_up) do |u| # Criar
      u.permit(:name, :address, :phone, :admin, :password, :password_confirmation, 
      		   :email, :pioneer, :congregation_function,:congregation_id, 
      		   designation_ids: [])
    end

    devise_parameter_sanitizer.for(:account_update) do |u| # Editar
      u.permit(:name, :address, :phone, :admin, :password, :password_confirmation, 
             :email, :pioneer, :congregation_function,:congregation_id, 
             :current_password, designation_ids: [])
    end
  end

end
