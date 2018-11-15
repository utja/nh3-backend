# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2018_11_15_054043) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "restaurants", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.string "city"
    t.string "state"
    t.string "zip_code"
    t.string "phone"
    t.string "image"
    t.string "website"
  end

  create_table "specials", force: :cascade do |t|
    t.bigint "restaurant_id"
    t.integer "day_id"
    t.string "name"
    t.string "comment"
    t.datetime "start_time"
    t.datetime "end_time"
    t.string "category"
    t.index ["restaurant_id"], name: "index_specials_on_restaurant_id"
  end

  add_foreign_key "specials", "restaurants"
end
