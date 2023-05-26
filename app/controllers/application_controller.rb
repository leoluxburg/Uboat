class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :authenticate_user!
  protect_from_forgery with: :exception
  include ApplicationHelper

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:vendedor, :admin, :email, :password) }
    devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:vendedor, :admin, :email, :password, :current_password) }
  end
end

