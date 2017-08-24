class ArticlesController < ApplicationController
  
  
  def index
    @article = Article.all
  end
  
  def show
    @article = Article.find(params[:id])
    @user = User.all
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
    
    if @article.save
      # Store success message in flash hash
      # and redirect to the new action
      flash[:success] = "Post Successful."
      redirect_to @article
    else
      # if Contact object doesn't save, store errors in flash hash
      # and redirect
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
      params.require(:article).permit(:title, :text, :average_color, :crop_x, :crop_y, :crop_w, :crop_h, :thumbnail)
    end
  
end
