RSpec.describe User, type: :model do
    describe 'db table' do
        it { is_expected.to have_db_column(:role).of_type(:integer)}
    end

    describe 'role' do
        it {is_expected.to define_enum_for(:role).with_values({admin: 1, cp: 2, candidate: 3})}
    end

    describe 'factory' do
        it 'is expected to have a default factory' do
            expect(create(:admin)).to be_valid
        end
    end
end