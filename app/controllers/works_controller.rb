class WorksController < ApplicationController
  before_action :set_work, only: [:upvote, :downvote]
  # before_action :upvote, :downvote
  def show
    @work = Work.find(params[:id])
    render :show
  end

  def upvote
    byebug
    #@work = work.find(params[:id])
    @work.liked_by User.first #votes.create
    redirect_to work_path(@work)
  end

  def downvote
    @work.get_downvotes current_user
    redirect_to franchise_path
  end

  private
  def set_work
    @work = Work.find(params[:id])
  end


end
