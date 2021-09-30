require 'rails_helper'

RSpec.describe Candidat, type: :model do
  describe 'db table' do
    it { is_expected.to have_db_column(:nom).of_type(:string) }
    it { is_expected.to have_db_column(:post_nom).of_type(:string) }
    it { is_expected.to have_db_column(:prenom).of_type(:string) }
    it { is_expected.to have_db_column(:promotion).of_type(:string) }
    it { is_expected.to have_db_column(:description).of_type(:text) }
  end 

  describe 'Validation' do
    it { is_expected.to validate_presence_of :nom }
    it { is_expected.to validate_presence_of :promotion }
  end

  describe 'Factory' do
    it 'should have valid Factory' do
      expect(create(:date_vote)).to be_valid
    end
  end
end