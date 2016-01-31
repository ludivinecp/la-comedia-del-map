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

ActiveRecord::Schema.define(version: 20160130212837) do

  create_table "actors", force: :cascade do |t|
    t.string   "firstname"
    t.string   "lastname"
    t.date     "date_birth"
    t.boolean  "is_male",    default: true
    t.integer  "play_id"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  add_index "actors", ["play_id"], name: "index_actors_on_play_id"

  create_table "ongoing_plays", force: :cascade do |t|
    t.datetime "playing_from"
    t.datetime "playing_to"
    t.integer  "plays_id"
    t.integer  "theaters_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "ongoing_plays", ["plays_id"], name: "index_ongoing_plays_on_plays_id"
  add_index "ongoing_plays", ["theaters_id"], name: "index_ongoing_plays_on_theaters_id"

  create_table "plays", force: :cascade do |t|
    t.string   "title"
    t.datetime "date_start"
    t.datetime "date_end"
    t.text     "synopsys"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "theater_id"
  end

  add_index "plays", ["theater_id"], name: "index_plays_on_theater_id"

  create_table "theaters", force: :cascade do |t|
    t.integer  "number_of_places"
    t.datetime "availibility_from"
    t.datetime "availibility_to"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.string   "name"
  end

  create_table "tickets", force: :cascade do |t|
    t.integer  "price"
    t.datetime "date"
    t.datetime "hour"
    t.integer  "number_of_people"
    t.integer  "user_id"
    t.integer  "plays_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  add_index "tickets", ["plays_id"], name: "index_tickets_on_plays_id"
  add_index "tickets", ["user_id"], name: "index_tickets_on_user_id"

  create_table "users", force: :cascade do |t|
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
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
    t.string   "firstname"
    t.string   "lastname"
    t.boolean  "admin",                  default: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
