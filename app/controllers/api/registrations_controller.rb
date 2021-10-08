class Api::RegistrationsController < DeviseTokenAuth::RegistrationsController
    #prepend_before_action :require_no_authentication, only: [:cancel]
    #prepend_before_action :authenticate_scope!, only: [:new, :create, :edit, :update, :destroy]
    
    before_action :authenticate_user!
    before_action :admin_authenticator!

    def create
      @resource = User.create!(
        matricule: params[:matricule],
        nom: params[:nom],
        post_nom: params[:post_nom],
        prenom: params[:prenom],
        password: params[:password],
        role: params[:role], 
        uid: params[:matricule]
      )
      # unless @resource.save
      #  render json: { message: @resource.errors.full_messages.join(', ') }, status: :bad_request
      #  return
      # end
   
      @token = @resource.create_token
      @resource.save
   
      update_auth_header
      render_create_success
     end

    protected

    def admin_authenticator!
      return if current_user.admin?
      render json: { error_message: "Vous n'êtes pas autorisé de créer un utilisateur" }, status: 403
    end

end
