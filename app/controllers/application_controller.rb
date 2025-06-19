class ApplicationController < ActionController::Base
  allow_browser versions: :modern

  helper_method :current_user
  before_action :authenticate_user

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def authenticate_user
    redirect_to new_session_path unless current_user
  end

end
