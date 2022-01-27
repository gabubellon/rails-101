class ApplicationController < ActionController::Base
  before_action :authenticate_user!

  # Customize Controler to add adicional fields https://gist.github.com/withoutwax/46a05861aa4750384df971b641170407
  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up) do |u|
      u.permit(:name, :lastname, :nickname, :birthdate, :email, :password)
    end

    devise_parameter_sanitizer.permit(:account_update) do |u|
      u.permit(:name, :lastname, :nickname, :birthdate, :email, :password, :current_password)
    end
  end
end
