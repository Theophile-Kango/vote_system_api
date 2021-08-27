RSpec.describe 'POST /api/auth' do
    let!(:admin) {create(:user, matricule: '12345678', uid: '12345678', role: 'admin',  password: '0956323453')}
    let!(:cp) {create(:user,matricule: '12345679', uid: '12345679', role: 'cp', password: '0976353453')}
    let!(:candidate) {create(:user,matricule: '12345279', uid: '12345279', role: 'candidate', password: '0976353453')}

    describe 'User can login with correct credintials' do
        before do
            post '/auth/sign_in', params: { 
                matricule: '12345678', 
                password: '0956323453',
                source: 'public-system'
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
                password: '097635345',
                source: 'public-system'
            }
        end

        it do
            expect(response).to have_http_status 401
        end
    end

    describe 'Login as an admin' do
        before do
            post '/auth/sign_in', params: { 
                matricule: '12345678', 
                password: '0956323453',
                source: 'admin-system'
            }
        end

        it do
            expect(response).to have_http_status 200
        end
    end

    describe 'Login as a candidate' do
        before do
            post '/auth/sign_in', params: { 
                matricule: '12345279', 
                password: '0976353453',
                source: 'candidate-system'
            }
        end

        it do
            expect(response).to have_http_status 200
        end
    end

    describe "Cp can't login into the candidate system" do
        before do
            post '/auth/sign_in', params: { 
                matricule: '12345679', 
                password: '0976353453',
                source: 'candidate-system'
            }
        end

        it do
            expect(response).to have_http_status 401
        end
    end

    describe "Cp can't login into the admin system" do
        before do
            post '/auth/sign_in', params: { 
                matricule: '12345679', 
                password: '0976353453',
                source: 'admin-system'
            }
        end

        it do
            expect(response).to have_http_status 401
        end
    end

    describe "Candidate can't login into the admin system" do
        before do
            post '/auth/sign_in', params: { 
                matricule: '12345279', 
                password: '0976353453',
                source: 'admin-system'
            }
        end

        it do
            expect(response).to have_http_status 401
        end
    end
end