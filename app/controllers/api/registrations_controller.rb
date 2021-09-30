class Api::RegistrationsController < DeviseTokenAuth::ApplicationController
    prepend_before_action :require_no_authentication, only: [:cancel]
    before_action :authenticate_user!, only: %i[create]
    before_action :admin_authenticator, only: %i[create]
    
    def create
    end
  
    # Override from Devise::RegistrationsController to not sign in after sign up
    def sign_up(resource_name, resource)
      # Nothing to do
    end

end