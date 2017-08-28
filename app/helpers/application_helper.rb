module ApplicationHelper
    
end
def flash_class(level)
    case level
        when 'notice' then "flash alert alert-info"
        when 'success' then "flash alert alert-success"
        when 'danger' then "flash alert alert-danger"
        when 'alert' then "flash alert alert-danger"
    end
end

def define_page 
    @PAGE = {:controller => controller_name, :action => action_name, :id => params[:id]}
end

def list_articles
    @article_list = Article.all
end

def list_users
    @user_list = User.all
end