
RSpec.describe 'DELETE /api/auth' do
    let(:cp) { create(:cp, role: 'cp') }
    let(:auth_headers_cp) { cp.create_new_auth_token }

    describe 'Login User can logout' do
        before do
            delete '/auth/sign_out',
            headers: auth_headers_cp
        end
    
        it do
            expect(response).to have_http_status 200
        end
    end

end