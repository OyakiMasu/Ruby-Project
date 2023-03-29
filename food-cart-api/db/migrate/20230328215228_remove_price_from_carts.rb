class RemovePriceFromCarts < ActiveRecord::Migration[7.0]
  def change
    remove_column :carts, :price, :integer
  end
end
