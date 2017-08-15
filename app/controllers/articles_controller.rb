class ArticlesController < ApplicationController
  
  
  def index
    @article = Article.all
    # Count the number of articles to display
    a = @article.count%3 #And store modulo 3
    
    # Articles are displayed in rows alternating between 1 and 2 thumbnails per row
    case a
      when 0..1
        # If the number of articles mod 3 is 1 or 0, then the first row contains one thumbnail
        # This means that the counter is set to 2
        @counter = 2
      when 2
        # Else if the number of articles%3 is 2, then the first row contains two thumbnails
        # This means the counter should be set to 0
        @counter = 0
    end
  end
  
  def show
    @article = Article.find(params[:id])
  end
  
  def new
  end
  
  def create
    @article = Article.new(article_params)
    
    @article.save
    redirect_to @article
  end
  
  
  private
    def article_params
      params.require(:article).permit(:title, :text, :average_color, :crop_x, :crop_y, :crop_w, :crop_h, :thumbnail)
    end
  
end
