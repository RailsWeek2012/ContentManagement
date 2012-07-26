class ApplicationController < ActionController::Base
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

  def get_user_email
    #@get_user_email = User.find(params[:email])
    @get_user_email = User.find(params[:email])
  end

  helper_method :user_signed_in?
  helper_method :get_user_email
  helper_method :current_user

  private
  def require_login!
    unless user_signed_in?
      redirect_to managements_path,
                  alert: "Bitte einloggen!"
    end
  end
end
