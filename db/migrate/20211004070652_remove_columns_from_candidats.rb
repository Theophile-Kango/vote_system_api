class RemoveColumnsFromCandidats < ActiveRecord::Migration[6.1]
  def change
    remove_column :candidats, :nom, :string
    remove_column :candidats, :post_nom, :string
    remove_column :candidats, :prenom, :string
  end
end
