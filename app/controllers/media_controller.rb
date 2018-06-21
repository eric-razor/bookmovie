class MediaController < ApplicationController
  before_action :upvote, :downvote

  def show
    @medium = Medium.find(params[:id])
    render :show
  end

  def upvote
    #@medium = Medium.find(params[:id])
    @medium.upvote_from current_user #votes.create
    redirect_to medium_path
    # @franchise = Franchise.find(params[:franchise_id])
    # render franchise_path(@franchise)
  end

  def downvote
    @medium.downvote_from current_user #votes.create
    redirect_to medium_path

  end

  # def find_franchise
  #
  # end
end
