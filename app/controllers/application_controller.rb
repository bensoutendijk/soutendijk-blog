class ApplicationController < ActionController::Base
  before_action :define_page
  protect_from_forgery with: :exception
end
