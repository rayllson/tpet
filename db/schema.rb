# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20140920034501) do

  create_table "congregations", force: true do |t|
    t.string   "name"
    t.string   "address"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "designations", force: true do |t|
    t.integer  "localization_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.time     "schedule"
    t.string   "week_day"
  end

  add_index "designations", ["localization_id"], name: "index_designations_on_localization_id", using: :btree

  create_table "designations_users", force: true do |t|
    t.integer  "designation_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "designations_users", ["designation_id"], name: "index_designations_users_on_designation_id", using: :btree
  add_index "designations_users", ["user_id"], name: "index_designations_users_on_user_id", using: :btree

  create_table "localizations", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.float    "latitude"
    t.float    "longitude"
  end

  create_table "posts", force: true do |t|
    t.string   "title"
    t.text     "content"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "posts", ["user_id"], name: "index_posts_on_user_id", using: :btree

  create_table "users", force: true do |t|
    t.string   "email",                  default: "",    null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "name"
    t.string   "address"
    t.string   "phone"
    t.boolean  "admin"
    t.integer  "congregation_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "approved",               default: false, null: false
    t.boolean  "pioneer"
    t.integer  "congregation_function"
  end

  add_index "users", ["approved"], name: "index_users_on_approved", using: :btree
  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  create_table "visit_forms", force: true do |t|
    t.string   "name"
    t.string   "address"
    t.string   "city"
    t.string   "state"
    t.string   "cep"
    t.string   "phone"
    t.string   "language"
    t.string   "sex"
    t.integer  "user_id"
    t.date     "form_date"
    t.text     "observations"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "congregation_id"
    t.integer  "sended_user_id"
  end

  add_index "visit_forms", ["congregation_id"], name: "index_visit_forms_on_congregation_id", using: :btree
  add_index "visit_forms", ["user_id"], name: "index_visit_forms_on_user_id", using: :btree

end
