class ApplicationController < ActionController::Base
  include Pundit
  before_action :configure_permitted_parameters, if: :devise_controller?
  protect_from_forgery with: :exception



  def after_sign_in_path_for(resource)
    user_path(current_user.id)
  end

  def after_sign_out_path_for(resource)
    root_path
  end

  private

    def configure_permitted_parameters
      devise_parameter_sanitizer.for(:sign_up).push(:first_name, :last_name, :email, :address, :city, :zip)
    end
end
