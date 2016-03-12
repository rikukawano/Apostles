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

ActiveRecord::Schema.define(version: 20160311132222) do

  create_table "benchpress_stat", force: :cascade do |t|
    t.integer "stat_id"
    t.integer "benchpress_record"
  end

  add_index "benchpress_stat", ["stat_id"], name: "index_benchpress_stat_on_stat_id"

  create_table "height_stat", force: :cascade do |t|
    t.integer "stat_id"
    t.integer "height"
  end

  add_index "height_stat", ["stat_id"], name: "index_height_stat_on_stat_id"

  create_table "managers", force: :cascade do |t|
    t.integer  "team_id"
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "managers", ["team_id"], name: "index_managers_on_team_id"

  create_table "squat_stat", force: :cascade do |t|
    t.integer "stat_id"
    t.integer "squat_record"
  end

  add_index "squat_stat", ["stat_id"], name: "index_squat_stat_on_stat_id"

  create_table "stats", force: :cascade do |t|
    t.string   "type"
    t.integer  "player_id"
    t.integer  "number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "stats", ["player_id"], name: "index_stats_on_player_id"

  create_table "team", force: :cascade do |t|
    t.string "name"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

  create_table "weight_stat", force: :cascade do |t|
    t.integer "stat_id"
    t.integer "weight_record"
  end

  add_index "weight_stat", ["stat_id"], name: "index_weight_stat_on_stat_id"

end
