class ApplicationController < ActionController::Base

  protect_from_forgery with: :null_session

  def home
    redirect_to controller: 'sessions', action: 'new' unless session[:username]
  end

  def current_user
    session[:username]
  end

  private

  def require_login
    redirect_to controller: 'sessions', action: 'new' unless current_user
  end
end
