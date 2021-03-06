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

ActiveRecord::Schema.define(version: 20160305053147) do

  create_table "authentications", force: :cascade do |t|
    t.integer  "user_id",    limit: 4
    t.string   "provider",   limit: 255
    t.string   "uid",        limit: 255
    t.string   "name",       limit: 255
    t.string   "nickname",   limit: 255
    t.string   "image",      limit: 255
    t.string   "email",      limit: 255
    t.string   "location",   limit: 255
    t.string   "gender",     limit: 255
    t.string   "token",      limit: 255
    t.string   "secret",     limit: 255
    t.datetime "deleted_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "authentications", ["user_id"], name: "index_authentications_on_user_id", using: :btree

  create_table "user_profiles", force: :cascade do |t|
    t.integer  "user_id",                    limit: 4, null: false
    t.integer  "age",                        limit: 4
    t.integer  "height",                     limit: 4
    t.integer  "weight",                     limit: 4
    t.integer  "prefecture_id",              limit: 4
    t.integer  "gender_id",                  limit: 4
    t.integer  "job_id",                     limit: 4
    t.integer  "blood_type_id",              limit: 4
    t.integer  "academic_background_id",     limit: 4
    t.integer  "drink_id",                   limit: 4
    t.integer  "smoking_id",                 limit: 4
    t.integer  "nationality_id",             limit: 4
    t.integer  "annual_income_id",           limit: 4
    t.integer  "marital_history_id",         limit: 4
    t.integer  "has_children_type_id",       limit: 4
    t.integer  "marriage_intention_type_id", limit: 4
    t.integer  "want_child_type_id",         limit: 4
    t.integer  "homework_type_id",           limit: 4
    t.datetime "deleted_at"
    t.datetime "created_at",                           null: false
    t.datetime "updated_at",                           null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name",                limit: 255
    t.string   "image",               limit: 255
    t.string   "email",               limit: 255
    t.boolean  "admin_flag",                        default: false
    t.string   "last_login_provider", limit: 255
    t.datetime "last_login_at"
    t.text     "user_agent",          limit: 65535
    t.datetime "deleted_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
