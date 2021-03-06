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

ActiveRecord::Schema.define(version: 20161114201344) do

  create_table "albums", force: :cascade do |t|
    t.string   "artist",                 limit: 255
    t.text     "history",                limit: 65535
    t.integer  "year",                   limit: 4
    t.text     "notes",                  limit: 65535
    t.string   "name",                   limit: 255
    t.integer  "genre_id",               limit: 4
    t.datetime "created_at",                           null: false
    t.datetime "updated_at",                           null: false
    t.string   "thumbnail_file_name",    limit: 255
    t.string   "thumbnail_content_type", limit: 255
    t.integer  "thumbnail_file_size",    limit: 4
    t.datetime "thumbnail_updated_at"
  end

  add_index "albums", ["genre_id"], name: "index_albums_on_genre_id", using: :btree

  create_table "blogs", force: :cascade do |t|
    t.string   "title",                  limit: 255
    t.text     "sub_title",              limit: 65535
    t.text     "body",                   limit: 65535
    t.datetime "created_at",                           null: false
    t.datetime "updated_at",                           null: false
    t.string   "thumbnail_file_name",    limit: 255
    t.string   "thumbnail_content_type", limit: 255
    t.integer  "thumbnail_file_size",    limit: 4
    t.datetime "thumbnail_updated_at"
  end

  create_table "ckeditor_assets", force: :cascade do |t|
    t.string   "data_file_name",    limit: 255, null: false
    t.string   "data_content_type", limit: 255
    t.integer  "data_file_size",    limit: 4
    t.integer  "assetable_id",      limit: 4
    t.string   "assetable_type",    limit: 30
    t.string   "type",              limit: 30
    t.integer  "width",             limit: 4
    t.integer  "height",            limit: 4
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
  end

  add_index "ckeditor_assets", ["assetable_type", "assetable_id"], name: "idx_ckeditor_assetable", using: :btree
  add_index "ckeditor_assets", ["assetable_type", "type", "assetable_id"], name: "idx_ckeditor_assetable_type", using: :btree

  create_table "genres", force: :cascade do |t|
    t.string   "title",                  limit: 255
    t.text     "description",            limit: 65535
    t.string   "type",                   limit: 255
    t.datetime "created_at",                           null: false
    t.datetime "updated_at",                           null: false
    t.string   "thumbnail_file_name",    limit: 255
    t.string   "thumbnail_content_type", limit: 255
    t.integer  "thumbnail_file_size",    limit: 4
    t.datetime "thumbnail_updated_at"
  end

  create_table "tours", force: :cascade do |t|
    t.string   "title",      limit: 255
    t.string   "timimg",     limit: 255
    t.string   "date",       limit: 255
    t.string   "place",      limit: 255
    t.string   "artist",     limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_foreign_key "albums", "genres"
end
