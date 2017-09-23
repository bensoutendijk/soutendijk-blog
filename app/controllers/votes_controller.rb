class VotesController < ApplicationController
  before_action :authenticate_user!
  
  def create
    @vote = @votable.votes.new vote_params
    @vote.user_id = current_user.id
    if @vote.save
      redirect_to @votable
    else
      flash[:danger] = "Error: vote " + @vote.errors.full_messages.join(", ")
      redirect_to @votable
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
