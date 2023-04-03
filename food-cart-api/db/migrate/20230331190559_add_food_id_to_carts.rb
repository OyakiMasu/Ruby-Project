class AddFoodIdToCarts < ActiveRecord::Migration[7.0]
  def change
    add_column :carts, :food_id, :integer
  end
end
