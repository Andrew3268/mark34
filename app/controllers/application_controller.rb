class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception


  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
    devise_parameter_sanitizer.permit(:account_update, keys: [:name])
  end

  def favorite_text
    return @favorite_exists ? "- UNCOLLECT" : " + COLLECT"
    # return @favorite_exists ? "-" : "+"
  end

  helper_method :favorite_text

end
