class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
before_action :configure_permitted_parameters, if: :devise_controller?


protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
    devise_parameter_sanitizer.permit(:account_update, keys: [:name])

    devise_parameter_sanitizer.permit(:sign_up, keys: [:company])
    devise_parameter_sanitizer.permit(:account_update, keys: [:company])

    devise_parameter_sanitizer.permit(:sign_up, keys: [:address])
    devise_parameter_sanitizer.permit(:account_update, keys: [:address])

    devise_parameter_sanitizer.permit(:sign_up, keys: [:tel])
    devise_parameter_sanitizer.permit(:account_update, keys: [:tel])
    devise_parameter_sanitizer.permit(:sign_up, keys: [:zip])
    devise_parameter_sanitizer.permit(:account_update, keys: [:zip])
  end
end
