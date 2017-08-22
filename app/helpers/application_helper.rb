module ApplicationHelper
end
def flash_class(level)
    case level
        when 'notice' then "container alert alert-dismissable alert-info"
        when 'success' then "container alert alert-dismissable alert-success"
        when 'danger' then "container alert alert-dismissable alert-danger"
        when 'alert' then "container alert alert-dismissable alert-danger"
    end
end
def nav_link(link_text, link_path, position)
    
    if position == 'right'
    class_name = current_page?(link_path) ? 'navbar-text navbar-link navbar-right navbar-link-active' : 'navbar-text navbar-link navbar-right'
    else
    class_name = current_page?(link_path) ? 'navbar-text navbar-link navbar-link-active' : 'navbar-text navbar-link'
    end
    link_to link_text, link_path, class: class_name
end
    
