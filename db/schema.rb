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

ActiveRecord::Schema.define(version: 20181002225911) do

  create_table "cats", force: :cascade do |t|
    t.string   "name"
    t.string   "type_of"
    t.integer  "age"
    t.string   "user_id"
    t.string   "school_id"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.boolean  "enrolled",   default: false
  end

  create_table "schools", force: :cascade do |t|
    t.string "name"
  end

  create_table "spells", force: :cascade do |t|
    t.string  "name"
    t.string  "cat_id"
    t.text    "description"
    t.string  "power_type",  default: "--- []\n"
    t.integer "power_level"
    t.string  "school_id"
    t.boolean "fire",        default: false
    t.boolean "water",       default: false
    t.boolean "earth",       default: false
    t.boolean "lightning",   default: false
    t.boolean "ice",         default: false
    t.boolean "poison",      default: false
    t.boolean "death",       default: false
    t.boolean "psychic",     default: false
    t.boolean "acid",        default: false
    t.boolean "wind",        default: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "password_digest"
    t.string   "oauth_token"
    t.datetime "oauth_expires_at"
    t.boolean  "admin",            default: false
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
    t.string   "email"
    t.string   "image"
    t.string   "uid"
  end

end
