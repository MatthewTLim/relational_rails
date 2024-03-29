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

ActiveRecord::Schema[7.0].define(version: 2023_07_06_231230) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cards", force: :cascade do |t|
    t.string "name"
    t.string "type_id"
    t.string "color_id"
    t.string "rarity"
    t.integer "set_number"
    t.boolean "format_legality"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "mtgset_id", null: false
    t.index ["mtgset_id"], name: "index_cards_on_mtgset_id"
  end

  create_table "mtgsets", force: :cascade do |t|
    t.string "set_name"
    t.integer "collection_number"
    t.boolean "current_set"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "cards", "mtgsets"
end
