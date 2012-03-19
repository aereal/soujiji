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

ActiveRecord::Schema.define(:version => 20120319193217) do

  create_table "answers", :force => true do |t|
    t.integer  "feature_id"
    t.integer  "library_id"
    t.string   "type"
    t.text     "content"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "answers", ["feature_id"], :name => "index_answers_on_feature_id"
  add_index "answers", ["library_id"], :name => "index_answers_on_library_id"

  create_table "features", :force => true do |t|
    t.string   "title"
    t.integer  "topic_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.string   "answer_type"
  end

  add_index "features", ["topic_id"], :name => "index_features_on_topic_id"

  create_table "languages", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "slug"
  end

  add_index "languages", ["slug"], :name => "index_languages_on_slug", :unique => true

  create_table "libraries", :force => true do |t|
    t.string   "name"
    t.text     "url"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.integer  "language_id"
    t.string   "slug"
  end

  create_table "topics", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
