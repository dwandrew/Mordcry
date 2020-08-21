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

ActiveRecord::Schema.define(version: 2020_08_20_091253) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "abilities", force: :cascade do |t|
    t.string "name"
    t.string "effect"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "armours", force: :cascade do |t|
    t.string "name"
    t.integer "soak"
    t.integer "agility_penalty"
    t.string "abilities"
    t.integer "cost"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "equipment", force: :cascade do |t|
    t.string "name"
    t.string "range"
    t.integer "attacks"
    t.string "damage"
    t.string "abilities"
    t.string "description"
    t.string "strength"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "cost"
    t.string "category"
  end

  create_table "equipment_abilities", force: :cascade do |t|
    t.integer "equipment_id"
    t.integer "ability_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "injuries", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "mutations", force: :cascade do |t|
    t.string "name"
    t.integer "cost"
    t.string "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "skills", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.string "skill_category"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "spells", force: :cascade do |t|
    t.string "spell_name"
    t.integer "spell_diff"
    t.string "description"
    t.string "spell_warband"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "provider"
    t.string "uid"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "warbands", force: :cascade do |t|
    t.string "name"
    t.string "warband_type"
    t.integer "user_id"
    t.integer "gold_crowns", default: 500
    t.integer "warband_rating", default: 0
    t.integer "wyrdstone_shards", default: 0
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "warbands_equipment", force: :cascade do |t|
    t.integer "warband_id"
    t.integer "equipment_id"
  end

  create_table "warriors", force: :cascade do |t|
    t.string "name"
    t.string "warrior_type"
    t.integer "warband_id"
    t.integer "exp"
    t.integer "move"
    t.integer "strength"
    t.integer "toughness"
    t.integer "agility"
    t.integer "wounds"
    t.integer "bravery"
    t.string "injuries"
    t.boolean "active"
    t.integer "number"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "warband_type"
    t.boolean "is_hero", default: false
    t.integer "cost"
    t.string "skills_list"
    t.string "equipment_list"
    t.integer "close_combat_attacks_bonus", default: 0
    t.integer "ranged_attacks_bonus", default: 0
    t.integer "close_combat_damage_bonus", default: 0
    t.integer "ranged_damage_bonus", default: 0
  end

  create_table "warriors_armours", force: :cascade do |t|
    t.integer "warrior_id"
    t.integer "armour_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "warriors_equipments", force: :cascade do |t|
    t.integer "warrior_id"
    t.integer "equipment_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "warriors_injuries", force: :cascade do |t|
    t.integer "warrior_id"
    t.integer "injury_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "warriors_mutations", force: :cascade do |t|
    t.integer "warrior_id"
    t.integer "mutation_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "warriors_skills", force: :cascade do |t|
    t.integer "warrior_id"
    t.integer "skill_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "warriors_spells", force: :cascade do |t|
    t.integer "warrior_id"
    t.integer "spell_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
