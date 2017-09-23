class PagesController < ApplicationController
  before_action :authenticate_user!, except: [:about]
  
  def about
    @article = Article.first
  end

  def settings
    @user = current_user
  end
end
