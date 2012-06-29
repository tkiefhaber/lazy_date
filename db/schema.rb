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

ActiveRecord::Schema.define(:version => 20120629042142) do

  create_table "categories", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "cuisines", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "movie_categories", :force => true do |t|
    t.integer  "movie_id"
    t.integer  "category_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "movies", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.text     "link"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.text     "image_url"
  end

  create_table "restaurant_cuisines", :force => true do |t|
    t.integer  "restaurant_id"
    t.integer  "cuisine_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "restaurants", :force => true do |t|
    t.boolean  "delivers",    :default => false
    t.boolean  "takeout",     :default => true
    t.string   "name"
    t.text     "description"
    t.text     "link"
    t.datetime "created_at",                     :null => false
    t.datetime "updated_at",                     :null => false
    t.text     "image_url"
  end

  create_table "stories", :force => true do |t|
    t.integer  "cuisine_id"
    t.integer  "category_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.string   "name"
    t.text     "description"
    t.text     "image_url"
    t.integer  "votes_count"
  end

  create_table "votes", :force => true do |t|
    t.integer  "story_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
