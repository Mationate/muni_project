class ApplicationController < ActionController::Base
  devise_group :entity, contains: [:user, :company]
  # current_entity
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
  end
end
