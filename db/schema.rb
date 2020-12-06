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

ActiveRecord::Schema.define(version: 2020_12_06_122615) do

  create_table "characters", force: :cascade do |t|
    t.string "name"
    t.integer "life_points"
    t.integer "attack_points"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "games", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "turns", force: :cascade do |t|
    t.integer "game_id"
    t.integer "home_character_id"
    t.integer "home_character_life_points"
    t.integer "away_character_id"
    t.integer "away_character_life_points"
    t.integer "plays"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["away_character_id"], name: "index_turns_on_away_character_id"
    t.index ["game_id"], name: "index_turns_on_game_id"
    t.index ["home_character_id"], name: "index_turns_on_home_character_id"
  end

end
