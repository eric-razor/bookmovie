class SessionsController < ApplicationController

  def new
  end

  def create
    @user = User.find_by(username: params[:username])
  return redirect_to(controller: 'sessions', action: 'new') if !params[:username] || params[:username].empty?
    session[:username] = params[:username]
    redirect_to controller: 'application', action: 'home'
  end

  def destroy
    session.delete :username
    redirect_to controller: 'application', action: 'home'
  end

end
