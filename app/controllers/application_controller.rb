class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  def current_user
  	@current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def check_if_login_required
  	redirect_to root_path unless current_user
  end

  def check_if_already_logged_in
    redirect_to posts_path if current_user
  end

  def end_session
  	@current_user = nil
  	session[:user_id] = nil
  end
end
