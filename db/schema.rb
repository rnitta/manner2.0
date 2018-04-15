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

ActiveRecord::Schema.define(version: 20180309075531) do

  create_table "categories", force: :cascade do |t|
    t.string "name", null: false
    t.string "friendly_id", null: false
    t.integer "count", default: 0, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "favorits", force: :cascade do |t|
    t.integer "manner_id"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["manner_id"], name: "index_favorits_on_manner_id"
    t.index ["user_id"], name: "index_favorits_on_user_id"
  end

  create_table "manners", force: :cascade do |t|
    t.integer "user_id"
    t.string "title", null: false
    t.text "description", null: false
    t.integer "star", default: 0, null: false
    t.integer "pv", default: 0, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_manners_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "login_id", null: false
    t.string "name", null: false
    t.string "email", null: false
    t.string "register_ip"
    t.string "login_ip"
    t.integer "exp", default: 0, null: false
    t.integer "rank", default: 0, null: false
    t.integer "lv", default: 0, null: false
    t.string "password_digest", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
