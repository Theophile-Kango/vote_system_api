class RemoveDateVoteFromVotes < ActiveRecord::Migration[6.1]
  def change
    remove_reference :votes, :date_vote, null: false, foreign_key: true
  end
end
