class CommentsController < ApplicationController
  before_action :authenticate_user!
  
  def index
    respond_to do |format|
      format.js
    end
  end
  
  def create
    @comment = @commentable.comments.new comment_params
    @comment.user_id = current_user.id
    respond_to do |format|
      if @comment.save
        @success = true
        format.js
      else
        flash[:danger] = "Error: Comment " + @comment.errors.full_messages.join(", ")
        @success = false
        format.js
      end
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
