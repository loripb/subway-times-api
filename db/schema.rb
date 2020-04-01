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

ActiveRecord::Schema.define(version: 2020_04_01_154152) do

  create_table "lines", force: :cascade do |t|
    t.string "name"
    t.integer "feed_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "starred_stops", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "stop_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["stop_id"], name: "index_starred_stops_on_stop_id"
    t.index ["user_id"], name: "index_starred_stops_on_user_id"
  end

  create_table "stop_lines", force: :cascade do |t|
    t.integer "stop_id", null: false
    t.integer "line_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["line_id"], name: "index_stop_lines_on_line_id"
    t.index ["stop_id"], name: "index_stop_lines_on_stop_id"
  end

  create_table "stops", force: :cascade do |t|
    t.string "stop_id"
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "starred_stops", "stops"
  add_foreign_key "starred_stops", "users"
  add_foreign_key "stop_lines", "lines"
  add_foreign_key "stop_lines", "stops"
end
