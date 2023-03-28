class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.string :name
      t.text :description
      t.integer :quantity
      t.integer :food_id
      t.integer :user_id
      t.integer :price
      t.integer :cart_id

      t.timestamps
    end
  end
end
