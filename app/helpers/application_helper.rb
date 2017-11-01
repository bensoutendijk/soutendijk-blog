module ApplicationHelper
  
  def flash_class(level)
    case level
      when 'notice' then "flash alert alert-info"
      when 'success' then "flash alert alert-success"
      when 'danger' then "flash alert alert-danger"
      when 'alert' then "flash alert alert-danger"
    end
  end
  
  def cp(path)
    "active" if current_page?(path)
  end

end