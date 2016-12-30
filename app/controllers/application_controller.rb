class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_user, :log_in, :log_out

  def current_user
    if session[:user_id]
      @current_user ||= User.find(session[:user_id])
    else
      nil
    end
  end

  def log_in(user)
    session[:user_id] = user.id
  end

  def log_out
    session.clear
  end
end
