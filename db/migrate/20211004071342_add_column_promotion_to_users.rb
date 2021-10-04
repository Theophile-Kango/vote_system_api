class AddColumnPromotionToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :promotion, :string
  end
end
