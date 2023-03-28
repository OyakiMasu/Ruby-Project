class AddTotalQuantityToCarts < ActiveRecord::Migration[7.0]
  def change
    add_column :carts, :total_quantity, :integer
  end
end
