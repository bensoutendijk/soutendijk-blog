module ArticlesHelper
  def index

  end
  
  def show
    @author = User.find(@article.user_id)
  end
  
end
