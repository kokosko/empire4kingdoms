class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  # before_action :require_user

  protected

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  rescue ActiveRecord::RecordNotFound
    session[:user_id] = nil
    redirect_to root_path
  end
  helper_method :current_user

  def require_user
    return if current_user
    redirect_to root_path, alert: 'Log in to view this page'
  end
end
