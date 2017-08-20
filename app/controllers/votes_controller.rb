class VotesController < ApplicationController
  def upvote
    @comment = Comment.find(params[comment_id])
    @vote = @comment.votes.create(vote_params)
  end
  def downvote
  end
  
  private
    def comment_params
      params.require(:comment).permit(:type)
    end
end