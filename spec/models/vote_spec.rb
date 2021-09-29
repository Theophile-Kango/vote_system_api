require 'rails_helper'

RSpec.describe Vote, type: :model do
  describe 'db table' do
    it { is_expected.to have_db_column(:date_vote_id).of_type(:integer) }
    it { is_expected.to have_db_column(:user_id).of_type(:integer) }
  end

  describe 'Validation' do
    it { is_expected.to validate_presence_of :date_vote_id }
    it { is_expected.to validate_presence_of :user_id }
  end
end
