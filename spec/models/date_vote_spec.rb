require 'rails_helper'

RSpec.describe DateVote, type: :model do
  describe 'db table' do
    it { is_expected.to have_db_column(:date_debut).of_type(:datetime) }
    it { is_expected.to have_db_column(:date_fin).of_type(:datetime) }
    it { is_expected.to have_db_column(:is_valid).of_type(:boolean) }
  end

  describe 'Validation' do
    it { is_expected.to validate_presence_of :date_debut }
    it { is_expected.to validate_presence_of :date_fin }
  end

  describe 'Factory' do
    it 'should have valid Factory' do
      expect(create(:date_vote)).to be_valid
    end
  end
end
