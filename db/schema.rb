# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_06_14_215548) do

  create_table "buttons", force: :cascade do |t|
    t.string "color"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "combination_buttons", force: :cascade do |t|
    t.integer "combination_id", null: false
    t.integer "button_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["button_id"], name: "index_combination_buttons_on_button_id"
    t.index ["combination_id"], name: "index_combination_buttons_on_combination_id"
  end

  create_table "combinations", force: :cascade do |t|
    t.string "correct_order"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "difficulties", force: :cascade do |t|
    t.string "name"
    t.integer "number_of_buttons"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "difficulty_buttons", force: :cascade do |t|
    t.integer "difficulty_id", null: false
    t.integer "button_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["button_id"], name: "index_difficulty_buttons_on_button_id"
    t.index ["difficulty_id"], name: "index_difficulty_buttons_on_difficulty_id"
  end

  create_table "user_combinations", force: :cascade do |t|
    t.integer "combination_id", null: false
    t.integer "user_id", null: false
    t.string "time"
    t.integer "attempts"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["combination_id"], name: "index_user_combinations_on_combination_id"
    t.index ["user_id"], name: "index_user_combinations_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "combination_buttons", "buttons"
  add_foreign_key "combination_buttons", "combinations"
  add_foreign_key "difficulty_buttons", "buttons"
  add_foreign_key "difficulty_buttons", "difficulties"
  add_foreign_key "user_combinations", "combinations"
  add_foreign_key "user_combinations", "users"
end
