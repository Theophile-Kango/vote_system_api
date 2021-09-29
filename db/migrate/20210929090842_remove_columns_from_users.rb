class RemoveColumnsFromUsers < ActiveRecord::Migration[6.1]
  def change
    remove_column :users, :nom, :string
    remove_column :users, :post_nom, :string
    remove_column :users, :prenom, :string
    remove_column :users, :promotion, :string
    remove_column :users, :description, :text
  end
end
