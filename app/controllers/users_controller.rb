class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create #creates a new user
    @user = User.new(user_params)

    if @user.valid?
      @user.save
      redirect_to user_path(@user)
    else
      render :new
    end
  end


  def show  #show page for the users profile
    @user = User.find(params[:id])
  end




  private

  def user_params
    params.require(:user).permit(:name, :email, :password)
  end

end
