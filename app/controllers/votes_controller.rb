class VotesController < ApplicationController
  before_action :authenticate_user!
  
  def create
    @vote = @votable.votes.new vote_params
    @vote.user_id = current_user.id
    @article = Article.find(params[:article_id])
    respond_to do |format|
      if @vote.save
        
        format.js
      else
      end
    end
    
  end
  def destroy
    @article = Article.find(params[:article_id])
    @vote = @article.votes.destroy
  end
  
  private
    def vote_params
      params.require(:vote).permit(:weight)
    end
  
end
