RSpec.describe User, type: :model do
    describe 'db table' do
        it { is_expected.to have_db_column(:role).of_type(:string)}
    end

    describe 'factory' do
        it 'is expected to have a default factory' do
            expect(create(:user)).to be_valid
        end
    end
end