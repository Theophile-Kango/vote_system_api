RSpec.describe 'POST /api/auth' do
    
    let(:admin) { create(:admin, role: 'admin') }
    let(:auth_headers) { admin.create_new_auth_token }
    let(:cp) { create(:cp, role: 'cp') }
    let(:auth_headers_cp) { cp.create_new_auth_token }
    
    
    describe 'Non admin users can not create new date_vote' do
        before do
            post '/auth', params: {
                matricule: '12345678', 
                uid: '12345678', 
                role: 'admin',  
                password: '0956323453'
            },
            headers: auth_headers_cp
        end

        it 'is expected to return a 403 status' do
            expect(response).to have_http_status 403
        end
        
    end

    describe 'Admin user can create a new date_vote' do

        before do
            post '/auth', params: {
                matricule: '12345678', 
                uid: '12345678', 
                role: 'admin',  
                password: '0956323453'
            },
            headers: auth_headers
        end

        it 'is expected to return a 204 status' do
            expect(response).to have_http_status 204
        end
    end
end