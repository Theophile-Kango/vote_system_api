class AddCandidateToVotes < ActiveRecord::Migration[6.1]
  def change
    add_reference :votes, :candidat, null: false, foreign_key: true
  end
end
