class CommentsController < ApplicationController
  before_action :authenticate_user!
  
  def create
    @comment = @commentable.comments.new comment_params
    @comment.user_id = current_user.id
    if @comment.save
      redirect_to @commentable
    else
      flash[:danger] = "Error: Comment " + @comment.errors.full_messages.join(", ")
      redirect_to @commentable
    end
  end
  def destroy
    @article = Article.find(params[:article_id])
    @comment = @article.comments.destroy
  end
  
  private
    def comment_params
      params.require(:comment).permit(:body)
    end
  
end
