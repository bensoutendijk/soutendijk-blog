module ApplicationHelper
  
  # Devise resource helper for partial forms
  
  def resource_name
    :user
  end
 
  def resource
    @resource ||= User.new
  end

  def resource_class
    User
  end
 
  def devise_mapping
    @devise_mapping ||= Devise.mappings[:user]
  end
  
  
  # Flash class translations
  def flash_class(level)
    case level
      when 'notice' then "flash alert alert-info"
      when 'success' then "flash alert alert-success"
      when 'danger' then "flash alert alert-danger"
      when 'alert' then "flash alert alert-danger"
    end
  end
  
  # Current page classes
  def cp(path)
    "active" if current_page?(path)
  end

end