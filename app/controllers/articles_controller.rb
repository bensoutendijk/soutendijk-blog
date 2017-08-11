class ArticlesController < ApplicationController
    
    
    def index
        @article = Article.all
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
