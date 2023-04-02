class AddSubtotalsToCarts < ActiveRecord::Migration[7.0]
  def change
    add_column :carts, :subtotals, :integer
  end
end
