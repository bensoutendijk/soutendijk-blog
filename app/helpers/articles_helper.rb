module ArticlesHelper
  def index
    @counter = 0
  end
  
  def show
    @author = User.find(@article.user_id)
  end
  
end
