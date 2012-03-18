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

ActiveRecord::Schema.define(:version => 20120318195749) do

  create_table "agent_types", :force => true do |t|
    t.string   "name",       :limit => 50
    t.datetime "created_at",               :null => false
    t.datetime "updated_at",               :null => false
  end

  create_table "agents", :force => true do |t|
    t.string   "name",           :limit => 200
    t.integer  "division_id"
    t.integer  "corporation_id"
    t.integer  "location_id"
    t.integer  "level"
    t.integer  "quality"
    t.integer  "agent_type_id"
    t.boolean  "is_locator"
    t.datetime "created_at",                    :null => false
    t.datetime "updated_at",                    :null => false
  end

  create_table "ancestries", :force => true do |t|
    t.string   "name",              :limit => 100
    t.integer  "bloodline_id"
    t.string   "description",       :limit => 1000
    t.string   "short_description", :limit => 500
    t.integer  "perception"
    t.integer  "willpower"
    t.integer  "charisma"
    t.integer  "memory"
    t.integer  "intelligence"
    t.integer  "icon_id"
    t.datetime "created_at",                        :null => false
    t.datetime "updated_at",                        :null => false
  end

  create_table "bloodlines", :force => true do |t|
    t.string   "name",                     :limit => 100
    t.integer  "race_id"
    t.string   "description",              :limit => 1000
    t.string   "short_description",        :limit => 500
    t.string   "male_description",         :limit => 1000
    t.string   "short_male_description",   :limit => 500
    t.string   "female_description",       :limit => 1000
    t.string   "short_female_description", :limit => 500
    t.integer  "ship_type_id"
    t.integer  "corporation_id"
    t.integer  "perception"
    t.integer  "willpower"
    t.integer  "charisma"
    t.integer  "memory"
    t.integer  "intelligence"
    t.integer  "icon_id"
    t.datetime "created_at",                               :null => false
    t.datetime "updated_at",                               :null => false
  end

  create_table "certificate_categories", :force => true do |t|
    t.string   "name",        :limit => 256
    t.string   "description", :limit => 500
    t.datetime "created_at",                 :null => false
    t.datetime "updated_at",                 :null => false
  end

  create_table "certificate_classes", :force => true do |t|
    t.string   "name",        :limit => 256
    t.string   "description", :limit => 500
    t.datetime "created_at",                 :null => false
    t.datetime "updated_at",                 :null => false
  end

  create_table "certificates", :force => true do |t|
    t.integer  "category_id"
    t.integer  "class_id"
    t.integer  "grade"
    t.integer  "corp_id"
    t.integer  "icon_id"
    t.string   "description", :limit => 500
    t.datetime "created_at",                 :null => false
    t.datetime "updated_at",                 :null => false
  end

  create_table "character_attributes", :force => true do |t|
    t.string   "name",              :limit => 100
    t.string   "description",       :limit => 1000
    t.string   "short_description", :limit => 500
    t.integer  "icon_id"
    t.string   "notes",             :limit => 500
    t.datetime "created_at",                        :null => false
    t.datetime "updated_at",                        :null => false
  end

  create_table "races", :force => true do |t|
    t.string   "name",              :limit => 200
    t.string   "description",       :limit => 1000
    t.integer  "icon_id"
    t.string   "short_description", :limit => 500
    t.datetime "created_at",                        :null => false
    t.datetime "updated_at",                        :null => false
  end

end
