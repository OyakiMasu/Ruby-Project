class RemoveNameFromCarts < ActiveRecord::Migration[7.0]
  def change
    remove_column :carts, :name, :string
  end
end
