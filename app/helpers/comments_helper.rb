module CommentsHelper
  
  def comments_count(commentable)
    commentable.comments.count
  end
  
end
