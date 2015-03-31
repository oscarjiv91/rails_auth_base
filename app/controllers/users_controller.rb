class UsersController < Devise::RegistrationsController
  protect_from_forgery
  before_filter :configure_permitted_parameters

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up).push(:role_ids => [])
  end

end