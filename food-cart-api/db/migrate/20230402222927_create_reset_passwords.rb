class CreateResetPasswords < ActiveRecord::Migration[7.0]
  def change
    create_table :reset_passwords do |t|
      t.references :user, null: false, foreign_key: true
      t.string :reset_password_token
      t.datetime :reset_password_sent_at

      t.timestamps
    end
  end
end
