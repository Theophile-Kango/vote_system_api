require 'rails_helper'

RSpec.describe Candidat, type: :model do
  describe 'db table' do
    it { is_expected.to have_db_column(:description).of_type(:text) }
  end 

  describe 'Factory' do
    it 'should have valid Factory' do
      expect(create(:date_vote)).to be_valid
    end
  end
end