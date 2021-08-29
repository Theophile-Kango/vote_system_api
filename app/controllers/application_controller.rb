class ApplicationController < ActionController::API
        include DeviseTokenAuth::Concerns::SetUserByToken





        protected
        def find_resource(field, q_value)
           User.where(matricule: q_value, provider: field).first
        end
end
