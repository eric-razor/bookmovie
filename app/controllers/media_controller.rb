class MediaController < ApplicationController

  def show
    @medium = Medium.find(params[:id])
    render :show
  end

  def upvote
    @medium = Medium.find(params[:id])
    @medium.votes.create
    # redirect_to 
  end
end
