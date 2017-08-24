class CommentsController < ApplicationController
  before_action :authenticate_user!
  
  def create
    @article = Article.find(params[:article_id])
    @comment = @article.comments.create(comment_params)
    @comment.user_id = current_user.id
    if @comment.save
      redirect_to @article
    else
      flash[:danger] = "Error: Comment " + @comment.errors.full_messages.join(", ")
      redirect_to @article
    end
  end
  def destroy
    @article = Article.find(params[:article_id])
    @comment = @article.comments.destroy
  end
  
  private
    def comment_params
      params.require(:comment).permit(:commenter, :body, :user_id)
    end
  
end
