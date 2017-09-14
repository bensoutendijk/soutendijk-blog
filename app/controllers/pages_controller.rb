class PagesController < ApplicationController
  def about
    @article = Article.first
  end

  def settings
  end
end
