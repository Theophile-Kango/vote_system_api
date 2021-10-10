class AddNewColumnToCandidates < ActiveRecord::Migration[6.1]
  def change
    add_column :candidats, :image, :string
  end
end
