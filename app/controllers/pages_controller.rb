class PagesController < ApplicationController
  before_action :authenticate_user!, except: [:about]
  
  def about
    render 'about'
  end

  def settings
    @user = current_user
  end
end
