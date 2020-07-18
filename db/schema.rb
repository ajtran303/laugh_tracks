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

ActiveRecord::Schema.define(version: 20200718020726) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "comedians", force: :cascade do |t|
    t.string "name"
    t.integer "age"
    t.string "city"
    t.string "image_url"
  end

  create_table "tv_specials", force: :cascade do |t|
    t.string "name"
    t.integer "run_time"
    t.bigint "comedian_id"
    t.index ["comedian_id"], name: "index_tv_specials_on_comedian_id"
  end

  add_foreign_key "tv_specials", "comedians"
end
