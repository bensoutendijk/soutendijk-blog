class ArticlesController < ApplicationController
  before_action :authenticate_user!
  
  
  def index
    @article = Article.all
  end
  
  def show
    @article = Article.find(params[:id])
  end
  
  def new
    @article = Article.new
  end
  
  def destroy
    @article = Article.find(params[:id])
    @article.destroy
    
    redirect_to article_path
  end
  
  def create
    
    @article = Article.new(article_params)
    @article.user_id = current_user.id
    
    if @article.save
      flash[:success] = "Post Successful."
      redirect_to @article
    else
      flash[:danger] = "Error: " + @article.errors.full_messages.join(", ")
      redirect_to new_article_path
    end
  end
  
  def update
    @article = Article.find(params[:id])
 
    if @article.update(article_params)
      redirect_to @article
    else
      render 'edit'
    end
  end
  
  
  private
    def article_params
      params.require(:article).permit(:title, :text, :average_color, :font_color, :thumbnail)
    end
  
end
