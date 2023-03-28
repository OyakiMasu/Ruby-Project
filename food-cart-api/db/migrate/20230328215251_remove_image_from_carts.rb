class RemoveImageFromCarts < ActiveRecord::Migration[7.0]
  def change
    remove_column :carts, :image, :text
  end
end
