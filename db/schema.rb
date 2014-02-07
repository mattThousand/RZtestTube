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

ActiveRecord::Schema.define(version: 20140207163807) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "applications", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "b_params", force: true do |t|
    t.string   "name"
    t.integer  "body_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "value"
  end

  create_table "bodies", force: true do |t|
    t.integer  "request_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "h_params", force: true do |t|
    t.string   "name"
    t.integer  "header_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "value"
  end

  create_table "headers", force: true do |t|
    t.integer  "request_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "requests", force: true do |t|
    t.string   "url"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "application_id"
    t.string   "name"
    t.string   "req_type"
  end

end
