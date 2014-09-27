class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  def authenticate_user
    unless current_user
      redirect_to "/login"
    end
  end
  
  def current_user
    @current_user ||= User.find session[:user_id] if session[:user_id]
  end
  
  def authenticate_admin_user!
    authenticate_user
    #  @current_user.user_level == 1
    #end
  end
  
  def current_admin_user
    current_user
  end
  
  helper_method :current_admin_user
end
