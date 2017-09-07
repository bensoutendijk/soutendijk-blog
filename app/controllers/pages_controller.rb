class PagesController < ApplicationController
  def about
    @article = Article.first
  end
end
