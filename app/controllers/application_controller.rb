class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  helper_method :current_user

  private

  def current_user
    #session[:user_id] = nil
    @current_user ||= User.where(uid: session[:user_id]).first if session[:user_id]
    #p @current_user
  end
end
