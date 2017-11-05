class RegistrationsController < Devise::RegistrationsController
  respond_to :js
  # GET /resource/sign_up
  def new
    build_resource({})
    yield resource if block_given?
    respond_to do |format|
      format.js
    end
  end
  
  def create
    build_resource(sign_up_params)
  
    resource.save
    yield resource if block_given?
    if resource.persisted?
      if resource.active_for_authentication?
        # set_flash_message! :notice, :signed_up
        sign_up(resource_name, resource)
        @success = true
        respond_with resource, location: after_sign_up_path_for(resource)
      else
        set_flash_message! :notice, :"signed_up_but_#{resource.inactive_message}"
        expire_data_after_sign_in!
        respond_with resource, location: after_inactive_sign_up_path_for(resource)
      end
    else
      clean_up_passwords resource
      set_minimum_password_length
      respond_to do |format|
        format.js
      end
    end
  end
  
  protected
    def after_sign_up_path_for (resource)
      new_user_profile_path(resource)
    end
end