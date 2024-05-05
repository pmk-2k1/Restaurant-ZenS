class ApplicationController < ActionController::API
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_in, keys: %i[email password])
    devise_parameter_sanitizer.permit(:sign_up, keys: %i[email password username fullname address])
    # devise_parameter_sanitizer.permit(:account_update, keys: %i[name avatar])
  end
end
