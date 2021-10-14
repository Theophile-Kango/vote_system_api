RSpec.describe 'POST /api/vote' do
    
    let(:cp) { create(:cp, role: 'cp') }
    let(:auth_headers_cp) { cp.create_new_auth_token }

    describe 'Authenticate users can vote' do

        before do
            post '/api/vote', params: {
                candidat_id: 1,
                user_id: 1
            },
            headers: auth_headers_cp
        end

        it 'is expected to return a 200 status' do
            expect(response).to have_http_status 200
        end
    end
end