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

ActiveRecord::Schema.define(:version => 20130711235701) do

  create_table "add_section_to_pages", :force => true do |t|
    t.integer  "section_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "components", :force => true do |t|
    t.string   "title"
    t.string   "subtitle"
    t.text     "short_description"
    t.text     "description"
    t.integer  "page_id"
    t.integer  "components_list_id"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.string   "url"
  end

  create_table "components_lists", :force => true do |t|
    t.string   "name"
    t.string   "slug"
    t.integer  "page_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "page_templates", :force => true do |t|
    t.string   "name"
    t.datetime "created_at",                    :null => false
    t.datetime "updated_at",                    :null => false
    t.string   "slug"
    t.boolean  "default",    :default => false
  end

  create_table "pages", :force => true do |t|
    t.string   "title"
    t.text     "text"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
    t.integer  "parent_page_id"
    t.integer  "section_id"
    t.boolean  "is_home"
    t.integer  "page_template_id"
    t.string   "slug"
  end

  create_table "sections", :force => true do |t|
    t.string   "name"
    t.datetime "created_at",                          :null => false
    t.datetime "updated_at",                          :null => false
    t.boolean  "show_in_main_menu", :default => true
    t.string   "slug"
  end

end
