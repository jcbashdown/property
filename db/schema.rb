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

ActiveRecord::Schema.define(:version => 20110728004715) do

  create_table "blocks", :force => true do |t|
    t.string   "name"
    t.string   "postcode"
    t.datetime "build_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "document_types", :force => true do |t|
    t.string   "name"
    t.string   "extension"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "allow_expiry"
    t.datetime "valid_from"
  end

  create_table "documents", :force => true do |t|
    t.integer  "document_type_id"
    t.integer  "block_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.datetime "expiry_date"
    t.string   "doc_file_name"
    t.string   "doc_content_type"
    t.integer  "doc_file_size"
    t.datetime "doc_updated_at"
  end

end
