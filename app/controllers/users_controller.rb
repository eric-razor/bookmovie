class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def show  #show page for the users profile
    @user = User.find(params[:id])
  end

  def create #creates a new user
    @user = User.create(user_params)
  end


  private

  def user_params
    params.require(:user).permit(:email, :password)
  end

end
