class CreateFoods < ActiveRecord::Migration[7.0]
  def change
    create_table :foods do |t|
      t.string :name
      t.text :image
      t.integer :price
      t.integer :star_rating
      t.text :description
      t.boolean :in_stock

      t.timestamps
    end
  end
end
