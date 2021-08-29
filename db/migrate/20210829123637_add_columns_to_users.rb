class AddColumnsToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :nom, :string
    add_column :users, :post_nom, :string
    add_column :users, :prenom, :string
    add_column :users, :promotion, :string
    add_column :users, :description, :text
  end
end
