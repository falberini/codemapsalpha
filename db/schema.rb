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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20131025022341) do

  create_table "languages", :force => true do |t|
    t.string   "language"
    t.string   "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "locations", :force => true do |t|
    t.string   "address"
    t.float    "latitude"
    t.float    "longitude"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "offline_schools", :force => true do |t|
    t.string   "name"
    t.string   "city"
    t.string   "state"
    t.integer  "zip_code"
    t.string   "site_url"
    t.string   "ed_level"
    t.string   "pricing"
    t.text     "bio"
    t.string   "format"
    t.datetime "created_at",                :null => false
    t.datetime "updated_at",                :null => false
    t.string   "street"
    t.float    "longitude"
    t.float    "latitude"
  end

  create_table "online_schools", :force => true do |t|
    t.string   "name"
    t.string   "site_url"
    t.string   "pricing"
    t.string   "bio"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "languages"
  end

  create_table "quotes", :force => true do |t|
    t.string   "author"
    t.string   "employer"
    t.string   "position"
    t.integer  "years_programming"
    t.text     "advice"
    t.string   "picture"
    t.string   "education"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

end
