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

ActiveRecord::Schema.define(version: 2020_08_07_140957) do

  create_table "equipment", force: :cascade do |t|
    t.string "name"
    t.integer "range"
    t.integer "attacks"
    t.string "damage"
    t.string "abilities"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "password_digest"
    t.string "email"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "warbands", force: :cascade do |t|
    t.string "name"
    t.string "type"
    t.integer "user_id"
    t.integer "gold_crowns"
    t.integer "warband_rating"
    t.integer "wyrdstone_shards"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "warbands_equipment", force: :cascade do |t|
    t.integer "warband_id"
    t.integer "equipment_id"
  end

  create_table "warriors", force: :cascade do |t|
    t.string "name"
    t.string "type"
    t.integer "warband_id"
    t.integer "exp"
    t.integer "move"
    t.integer "strength"
    t.integer "toughness"
    t.integer "agility"
    t.integer "wounds"
    t.integer "bravery"
    t.string "skills"
    t.string "injuries"
    t.boolean "active"
    t.integer "number"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "warriors_equipment", force: :cascade do |t|
    t.integer "warrior_id"
    t.integer "equipment_id"
  end

end
