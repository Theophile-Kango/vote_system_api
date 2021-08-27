class Api::SessionsController < DeviseTokenAuth::SessionsController
    # Unpermitted parameter: session
    
        # Check
    def find_resource(field, q_value)
        User.where(matricule: q_value, provider: field).first
    end
    
end
