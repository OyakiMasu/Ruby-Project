class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.text :username, null:false
      t.text :email, null:false
      t.string :password_digest, null:false
      t.text :image_url, null:false

      t.timestamps
    end
  end
end
