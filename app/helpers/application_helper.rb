module ApplicationHelper
end
def flash_class(level)
    case level
        when 'notice' then "container flash alert alert-info"
        when 'success' then "container flash alert alert-success"
        when 'danger' then "container flash alert alert-danger"
        when 'alert' then "container flash alert alert-danger"
    end
end