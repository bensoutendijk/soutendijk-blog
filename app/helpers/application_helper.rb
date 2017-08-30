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

def get_all_articles
    @all_articles = Article.all
end

def get_all_users
    @all_users = User.all
end