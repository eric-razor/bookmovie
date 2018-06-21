class FranchisesController < ApplicationController

  def index
    @franchises = Franchise.all

  end

  def show  #show page for the users profile
    @franchise = Franchise.find(params[:id])
    #byebug
  end

  def upvote
    #@medium = Medium.find(params[:id])
    @medium.get_upvotes current_user #votes.create
    redirect_to medium_path
    # @franchise = Franchise.find(params[:franchise_id])
    # render franchise_path(@franchise)
  end

  def downvote
    @medium.get_downvotes current_user #votes.create
    redirect_to medium_path

  end
  private

  def franchise_params
    params.require(:franchise).permit(:name)
  end

end
