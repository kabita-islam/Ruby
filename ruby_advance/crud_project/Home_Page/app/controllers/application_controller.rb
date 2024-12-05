class ApplicationController < ActionController::Base
  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  allow_browser versions: :modern
  protect_from_forgery with: :exception
  helper_method :current_user, :logged_in?, :require_user #for this it is available in views

  def current_user
    if session[:user_id]
      @current_user ||= begin
        User.find(session[:user_id])
      rescue ActiveRecord::RecordNotFound
        session[:user_id] = nil
        nil
      end
    end
  end
  def logged_in?
    !!current_user
  end
  def require_user
    if !logged_in?
      flash[:danger] = "You must be logged in to perform that action"
      redirect_to root_path
    end
  end
end
