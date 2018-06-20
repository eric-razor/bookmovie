class MediaController < ApplicationController

  def show
    @medium = Medium.find(params[:id])
    render :show
  end

  def upvote
    @medium = Medium.find(params[:id])
    @medium.votes.create
    @franchise = Franchise.find(params[:franchise_id])
    render franchise_path(@franchise)
  end

  # def find_franchise
  #
  # end
end
