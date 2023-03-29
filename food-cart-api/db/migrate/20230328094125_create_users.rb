class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.text :username
      t.text :email
      t.string :password_digest, null:false
      t.text :image_url

      t.timestamps
    end
  end
end
