class RemoveDescriptionFromOrders < ActiveRecord::Migration[7.0]
  def change
    remove_column :orders, :description, :string
  end
end
