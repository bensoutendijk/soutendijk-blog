class Articles::VotesController < VotesController
  before_action :set_votable
  
  private
  
    def set_votable
      @votable = Article.find(params[:article_id])
    end
    
end