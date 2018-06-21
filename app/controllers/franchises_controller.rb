class FranchisesController < ApplicationController

  def index
    @franchises = Franchise.all
  end

  def show  #show page for the users profile
    @franchise = Franchise.find(params[:id])
    #byebug
  end

  private

  def franchise_params
    params.require(:franchise).permit(:name)
  end

end
