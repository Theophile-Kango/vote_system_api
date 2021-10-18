class AddColumnTitleToDateVotes < ActiveRecord::Migration[6.1]
  def change
    add_column :date_votes, :title, :string
  end
end
