class PagesController < ApplicationController
  
  def about
    @article = Article.first
  end

  def settings
    @user = current_user
  end
end
