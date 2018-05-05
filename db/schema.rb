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

ActiveRecord::Schema.define(version: 20180505120656) do

  create_table "categories", force: :cascade do |t|
    t.string "name", null: false
    t.string "friendly_id", null: false
    t.integer "count", default: 0, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "favorites", force: :cascade do |t|
    t.integer "user_id"
    t.integer "manner_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["manner_id"], name: "index_favorites_on_manner_id"
    t.index ["user_id"], name: "index_favorites_on_user_id"
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
    t.integer "subject_id"
    t.string "title", null: false
    t.integer "star", default: 0, null: false
    t.integer "pv", default: 0, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["subject_id"], name: "index_manners_on_subject_id"
    t.index ["user_id"], name: "index_manners_on_user_id"
  end

  create_table "subjects", force: :cascade do |t|
    t.integer "user_id"
    t.integer "category_id"
    t.string "title", default: "", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["category_id"], name: "index_subjects_on_category_id"
    t.index ["user_id"], name: "index_subjects_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "login_id"
    t.string "name", default: "", null: false
    t.string "profile", default: "", null: false
    t.integer "lv", default: 0, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.boolean "admin", default: false
    t.index ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
