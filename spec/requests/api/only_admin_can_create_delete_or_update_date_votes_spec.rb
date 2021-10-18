RSpec.describe 'POST /api/date_vote' do
    
    let(:admin) { create(:admin, role: 'admin') }
    let(:auth_headers) { admin.create_new_auth_token }
    let(:cp) { create(:cp, role: 'cp') }
    let(:auth_headers_cp) { cp.create_new_auth_token }
    
    
    describe 'Non admin users can not create accounts' do
        before do
            post '/api/date_vote', params: {
                date_debut: "2021-09-29 10:00:00",
                date_fin: "2021-09-29 12:00:00"
            },
            headers: auth_headers_cp
        end

        it 'is expected to return a 403 status' do
            expect(response).to have_http_status 403
        end
        
    end

    describe 'Admin user create a new account' do

        before do
            post '/api/date_vote', params: {
                title: "Vote PP 2021",
                date_debut: "2021-09-29 10:00:00",
                date_fin: "2021-09-29 12:00:00"
            },
            headers: auth_headers
        end

        it 'is expected to return a 200 status' do
            expect(response).to have_http_status 200
        end
    end
end
