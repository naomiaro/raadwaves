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

ActiveRecord::Schema.define(version: 20141123063241) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "show_instances", force: true do |t|
    t.integer  "show_id"
    t.integer  "show_rule_id"
    t.datetime "start"
    t.datetime "end"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "show_rules", force: true do |t|
    t.integer  "show_id"
    t.date     "start_date"
    t.time     "start_time"
    t.date     "end_date"
    t.time     "end_time"
    t.string   "timezone"
    t.boolean  "repeats"
    t.text     "rrule"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "shows", force: true do |t|
    t.string   "name"
    t.string   "description"
    t.string   "color"
    t.string   "background_color"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
