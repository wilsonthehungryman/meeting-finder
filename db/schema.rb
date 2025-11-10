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

ActiveRecord::Schema[8.0].define(version: 2025_11_10_153001) do
  create_table "join_infos", force: :cascade do |t|
    t.string "link"
    t.string "meeting_id"
    t.string "meeting_provider"
    t.string "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "locations", force: :cascade do |t|
    t.string "street_address"
    t.string "province"
    t.string "country"
    t.decimal "lat"
    t.decimal "long"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.boolean "wheelchair_accessible"
    t.string "city"
  end

  create_table "meetings", force: :cascade do |t|
    t.string "source"
    t.datetime "time"
    t.string "type"
    t.integer "recovery_community_id", null: false
    t.integer "location_id"
    t.integer "join_info_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.boolean "recurring"
    t.string "meeting_type"
    t.index ["join_info_id"], name: "index_meetings_on_join_info_id"
    t.index ["location_id"], name: "index_meetings_on_location_id"
    t.index ["recovery_community_id"], name: "index_meetings_on_recovery_community_id"
  end

  create_table "recovery_communities", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.string "acronym"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "meetings", "join_infos"
  add_foreign_key "meetings", "locations"
  add_foreign_key "meetings", "recovery_communities"
end
