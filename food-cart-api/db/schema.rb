# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_04_02_222927) do
  create_table "carts", force: :cascade do |t|
    t.integer "total_price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "subtotals"
    t.integer "user_id"
    t.integer "quantity"
    t.integer "food_id"
  end

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "foods", force: :cascade do |t|
    t.string "name"
    t.text "image"
    t.integer "price"
    t.integer "star_rating"
    t.text "description"
    t.boolean "in_stock"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "category_id"
  end

  create_table "orders", force: :cascade do |t|
    t.integer "food_id"
    t.integer "user_id"
    t.integer "price"
    t.integer "cart_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "quantity"
  end

  create_table "reset_passwords", force: :cascade do |t|
    t.integer "user_id", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_reset_passwords_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.text "username", null: false
    t.text "email", null: false
    t.string "password_digest", null: false
    t.text "image_url", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password"
  end

  add_foreign_key "reset_passwords", "users"
end
