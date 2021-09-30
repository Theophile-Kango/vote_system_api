RSpec.describe 'POST /api/date_vote' do
    
    let(:candidate) { create(:candidate, role: 'candidate') }
    let(:candidate_headers) { candidate.create_new_auth_token }
    let(:cp) { create(:cp, role: 'cp') }
    let(:auth_headers_cp) { cp.create_new_auth_token }

    describe 'Cp can not create a Candidate user create a new account' do

        before do
            post '/api/candidate', params: {
                nom: "Fadhili",
                post_nom: "Kango",
                prenom: "Theophile",
                promotion: "L2",
                description: "Candidat a la deputation nationale",
                user_id: 1
            },
            headers: auth_headers_cp
        end

        it 'is expected to return a 403 status' do
            expect(response).to have_http_status 403
        end
    end

    describe 'Candidate can create a candidate account' do

        before do
            post '/api/candidate', params: {
                nom: "Fadhili",
                post_nom: "Kango",
                prenom: "Theophile",
                promotion: "L2",
                description: "Candidat a la deputation nationale",
                user_id: 1
            },
            headers: candidate_headers
        end

        it 'is expected to return a 200 status' do
            expect(response).to have_http_status 200
        end
    end
end