class VotesController < ApplicationController
  def create
    @comment = Comment.find(params[comment_id])
    @vote = @comment.votes.create(vote_params)
  end
  
  def destroy
    @comment = Comment.find(params[comment_id])
    @vote = @comment.votes.destroy
  end
  
  private
    def comment_params
      params.require(:comment).permit(:type)
    end
end