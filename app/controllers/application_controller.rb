class ApplicationController < ActionController::API
        include DeviseTokenAuth::Concerns::SetUserByToken


        protected
        def find_resource(field, q_value)
                User.where(matricule: q_value, provider: field).first
        end

        def admin_authenticator
                return if current_user.admin?
                render json: { error_message: "Vous n'êtes pas autorisé de créer un utilisateur" }, status: 403
        end
end
