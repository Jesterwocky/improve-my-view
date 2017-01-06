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

ActiveRecord::Schema.define(version: 20170105232202) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "improvements", force: :cascade do |t|
    t.integer  "space_view_id"
    t.integer  "author_id"
    t.text     "description"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["space_view_id"], name: "index_improvements_on_space_view_id", using: :btree
  end

  create_table "ownership_types", force: :cascade do |t|
    t.integer  "type_id",     null: false
    t.string   "name",        null: false
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["type_id", "name"], name: "index_ownership_types_on_type_id_and_name", unique: true, using: :btree
  end

  create_table "ownerships", force: :cascade do |t|
    t.integer  "space_id",          null: false
    t.integer  "owner_id",          null: false
    t.integer  "ownership_type_id", null: false
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.index ["space_id", "owner_id"], name: "index_ownerships_on_space_id_and_owner_id", using: :btree
  end

  create_table "space_type_associations", force: :cascade do |t|
    t.integer  "space_id",      null: false
    t.integer  "space_type_id", null: false
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "space_types", force: :cascade do |t|
    t.integer  "type_id",     null: false
    t.string   "name",        null: false
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["type_id", "name"], name: "index_space_types_on_type_id_and_name", unique: true, using: :btree
  end

  create_table "space_views", force: :cascade do |t|
    t.integer  "space_id",           null: false
    t.integer  "owner_id",           null: false
    t.string   "image_file_name",    null: false
    t.string   "image_content_type", null: false
    t.integer  "image_file_size",    null: false
    t.datetime "image_updated_at",   null: false
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.index ["space_id", "owner_id"], name: "index_space_views_on_space_id_and_owner_id", using: :btree
  end

  create_table "spaces", force: :cascade do |t|
    t.string   "name",       null: false
    t.integer  "owner_id",   null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["owner_id", "name"], name: "index_spaces_on_owner_id_and_name", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",           null: false
    t.string   "password_digest", null: false
    t.string   "name",            null: false
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
  end

end
