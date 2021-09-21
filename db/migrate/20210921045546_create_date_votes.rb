class CreateDateVotes < ActiveRecord::Migration[6.1]
  def change
    create_table :date_votes do |t|
      t.datetime :date_debut
      t.datetime :date_fin
      t.boolean :is_valid, default: false

      t.timestamps
    end
  end
end
