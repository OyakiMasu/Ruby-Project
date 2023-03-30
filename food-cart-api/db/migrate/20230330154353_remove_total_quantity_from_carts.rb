class RemoveTotalQuantityFromCarts < ActiveRecord::Migration[7.0]
  def change
    remove_column :carts, :total_quantity, :integer
  end
end
