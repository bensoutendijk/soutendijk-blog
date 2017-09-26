class VotesController < ApplicationController
  before_action :authenticate_user!
  
  def create
    @vote = @votable.votes.new vote_params
    @vote.user_id = current_user.id
    respond_to do |format|
      if @vote.save
        format.js
      else
        # do something if it fails
      end
    end
    
  end
  
  def update
    @vote = Vote.find(params[:id])
    respond_to do |format|
      if @vote.update! vote_params
        format.html { render(:text => "not implemented") }
        format.js
      else
        # do something if it fails
      end
    end
  end
  
  def destroy
    @vote = Vote.find(params[:id])
    @vote.destroy
    respond_to do |format|
      format.js
    end
  end
  
  private
    def vote_params
      params.require(:vote).permit(:weight)
    end
  
end
