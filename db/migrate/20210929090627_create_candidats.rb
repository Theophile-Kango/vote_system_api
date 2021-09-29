class CreateCandidats < ActiveRecord::Migration[6.1]
  def change
    create_table :candidats do |t|
      t.string :nom
      t.string :post_nom
      t.string :prenom
      t.string :promotion
      t.text :description
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
