RSpec.describe 'POST /api/auth' do
    let!(:regular_user) {create(:user, matricule: '12345678', uid: '1', role: 'admin',  password: '0956323453')}
    let!(:admin) {create(:user,matricule: '12345679', uid: '2', role: 'cp', password: '0976353453')}

    describe 'User can login with correct credintials' do
        before do
            post '/auth/sign_in', params: { 
                matricule: '12345678', 
                password: '0956323453'
            }
        end

        it do
            expect(response).to have_http_status 200
        end
    end

    describe "User can't login with bad credintials" do
        before do
            post '/auth/sign_in', params: { 
                matricule: '12345679', 
                password: '097635345'
            }
        end

        it do
            expect(response).to have_http_status 401
        end
    end
end