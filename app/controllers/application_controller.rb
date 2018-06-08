class ApplicationController < ActionController::Base
    before_action :authenticate_user!

    protect_from_forgery with: :exception

    before_action :configure_permitted_parameters, if: :devise_controller?


    rescue_from ActiveRecord::RecordNotFound do
      flash[:warning] = 'Resource not found.'
      redirect_back_or root_path
    end

    def after_sign_in_path_for(resource)
      user_path(current_user)
    end
    
    def redirect_back_or(path)
      redirect_to request.referer || path
    end






    protected
 
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:user_name, :email, :date_of_birth, :height, :intrested_in, :sex, :country, :state, :city, :one_liner, :password, :password_confirmation, :avatar, :avatar_cache])
    devise_parameter_sanitizer.permit(:account_update, keys: [:user_name, :password, :email, :height, :intrested_in, :sex, :country, :state, :city, :one_liner, :password_confirmation, :current_password, :avatar, :avatar_cache, :remove_avatar])
  end
  
end
