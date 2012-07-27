class ApplicationController < ActionController::Base
  before_filter :store_location
  protect_from_forgery
  private

  def current_user
    if session[:user_id]
      @current_user ||= User.find(session[:user_id])
    end
  end

  def user_signed_in?
    current_user.present?
  end

  helper_method :user_signed_in?
  helper_method :current_user

  private
  def require_login!
    unless user_signed_in?
      redirect_to managements_path,
                  alert: "Bitte einloggen!"
    end
  end

  def store_location
    session[:return_to] = request.env["REQUEST_URI"] if request.get? and controller_name != "users" and controller_name != "sessions"
  end

  def redirect_back_or_default(default, options = {})
    redirect_to(session[:return_to] || default, options)
  end
  #from: http://stackoverflow.com/questions/2139996/ruby-on-rails-redirect-toback
end
