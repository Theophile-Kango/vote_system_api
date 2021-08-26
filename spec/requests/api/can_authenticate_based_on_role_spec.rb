RSpec.describe 'POST /api/auth' do
    let!(:regular_user) {create(:user, role: 'cp', matricule: '42345', password: '0956323453')}
    let!(:admin) {create(:user, role: 'admin',matricule: '42144', password: '0976353453')}

    describe 'as a cp' do
        before do
            post '/api/auth', params: { 
                matricule: '42345', 
                password: '0956323453', 
                source: 'admin'
            }
        end

        it do
            expect(response).to have_http_status 401
        end
    end

    describe 'as an admin' do
        before do
            post '/api/auth', params: { 
                matricule: '42144', 
                password: '0976353453', 
                source: 'admin'
            }
        end

        it do
            expect(response).to have_http_status 204
        end
    end
end