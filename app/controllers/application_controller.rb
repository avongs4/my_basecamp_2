class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :authenticate_user!


  protected

  # Permit additional parameters for Devise
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: %i[name role])
    devise_parameter_sanitizer.permit(:account_update, keys: %i[name role])
  end

  # Redirect after successful sign-in
  def after_sign_in_path_for(_resource)
    projects_path # Change this if you have a different dashboard/homepage
  end

  # Redirect after sign-out
  def after_sign_out_path_for(_resource_or_scope)
    new_user_session_path # Redirect users to login after logging out
  end
end
