class CreateCarts < ActiveRecord::Migration[7.0]
  def change
    create_table :carts do |t|
      t.string :name
      t.integer :price
      t.text :image
      t.integer :total_price

      t.timestamps
    end
  end
end
