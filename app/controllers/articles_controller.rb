class ArticlesController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  
  def index
    @articles = Article.includes(:user)
  end
  
  def show
    @article = Article.find(params[:id])
    @author = User.find(@article.user_id)
  end
  
  def new
    @article = Article.new
  end
  
  def create
    
    @article = Article.new(article_params)
    @article.user_id = current_user.id
    
    if @article.save
      flash.now[:success] = "Post successful."
      redirect_to articles_path
    else
      flash.now[:danger] = "Error: " + @article.errors.full_messages.join(", ")
      redirect_to new_article_path
    end
  end
  
  def edit
    @article = Article.find(params[:id])
  end
  
  def update
    @article = Article.find(params[:id])
 
    if @article.update(article_params)
      redirect_to @article
    else
      render 'edit'
    end
  end
  
  def toggle_hidden
    @article = Article.find(params[:id])
    @article.hidden = !@article.hidden
    @article.save
  end
  
  def destroy
    @article = Article.find(params[:id])
    @article.destroy
    flash.now[:alert] = "Article deleted."
    redirect_to articles_path
  end
  
  private
    def article_params
      params.require(:article).permit(:title, :body, :average_color, :font_color, :icon, :hidden)
    end
end
