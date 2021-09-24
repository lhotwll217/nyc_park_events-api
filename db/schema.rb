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

ActiveRecord::Schema.define(version: 2021_09_24_221342) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "saved_events", force: :cascade do |t|
    t.string "categories"
    t.string "contact_phone"
    t.string "coordinates"
    t.text "description"
    t.string "end_date"
    t.string "end_time"
    t.string "guide"
    t.string "image"
    t.string "link"
    t.string "location"
    t.string "park_ids"
    t.string "park_names"
    t.string "start_date"
    t.string "start_time"
    t.string "title"
    t.boolean "attended"
    t.bigint "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_saved_events_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "password_digest"
    t.string "email"
    t.boolean "email_confirmed"
    t.string "confirm_token"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
