class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permitter_parameters, if: :devise_controller?

  respond_to :json

  def angular
    render 'layouts/application'
  end

  private
  def configure_permitter_parameters
    devise_parameter_sanitizer.for(:sign_up) << :username
  end
end
