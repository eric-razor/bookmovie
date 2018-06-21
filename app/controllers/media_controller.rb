class MediaController < ApplicationController
  before_action :set_medium, only: [:upvote, :downvote]
  # before_action :upvote, :downvote
  def show
    @medium = Medium.find(params[:id])
    render :show
  end

  def upvote
    #@medium = Medium.find(params[:id])
    @medium.get_upvotes current_user #votes.create
    redirect_to franchise_path
  end

  def downvote
    @medium.get_downvotes current_user
    redirect_to franchise_path
  end

  private
  def set_medium
    @medium = Medium.find(params[:id])
  end


end
