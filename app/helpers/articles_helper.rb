module ArticlesHelper
  def init
    # Count
    @numArticles = @article.count
    a = @numArticles%3 #And store modulo 3
    
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
end
