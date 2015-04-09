class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_filter :configure_permitted_parameters, if: :devise_controller?

  before_filter :set_last_seen_at, if: proc { user_signed_in? && (session[:last_seen_at] == nil || session[:last_seen_at] < 15.minutes.ago) }

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up).push(:profile_pic)
  end


  private
  def set_last_seen_at
    current_user.update_attribute(:last_seen_at, Time.now)
    session[:last_seen_at] = Time.now
  end

end
