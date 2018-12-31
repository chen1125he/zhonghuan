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

ActiveRecord::Schema.define(version: 20181231030652) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "admins", force: :cascade do |t|
    t.string   "name"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "advisers", force: :cascade do |t|
    t.string   "name"
    t.text     "desc"
    t.string   "mobile"
    t.integer  "level"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "building_description_details", force: :cascade do |t|
    t.integer  "building_description_id"
    t.string   "title"
    t.text     "desc"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.index ["building_description_id"], name: "index_building_description_details_on_building_description_id", using: :btree
  end

  create_table "building_descriptions", force: :cascade do |t|
    t.integer  "building_id"
    t.text     "sub_desc"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["building_id"], name: "index_building_descriptions_on_building_id", using: :btree
  end

  create_table "building_display_pictures", force: :cascade do |t|
    t.integer  "building_display_id"
    t.string   "name"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.index ["building_display_id"], name: "index_building_display_pictures_on_building_display_id", using: :btree
  end

  create_table "building_displays", force: :cascade do |t|
    t.integer  "building_id"
    t.string   "name"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["building_id"], name: "index_building_displays_on_building_id", using: :btree
  end

  create_table "buildings", force: :cascade do |t|
    t.integer  "price_per_sqm"
    t.string   "name"
    t.string   "tags",                default: [],              array: true
    t.string   "address"
    t.float    "latitude"
    t.float    "longitude"
    t.string   "developer"
    t.string   "property_company"
    t.date     "opening_date"
    t.date     "delivery_date"
    t.string   "property_type"
    t.string   "property_year"
    t.integer  "car_position_count"
    t.string   "decoration_standard"
    t.string   "green_rate"
    t.string   "plot_ratio"
    t.string   "property_fee_desc"
    t.integer  "base_count"
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
  end

  create_table "images", force: :cascade do |t|
    t.string   "owner_type"
    t.integer  "owner_id"
    t.string   "file_file_name"
    t.string   "file_content_type"
    t.bigint   "file_file_size"
    t.datetime "file_updated_at"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.index ["owner_type", "owner_id"], name: "index_images_on_owner_type_and_owner_id", using: :btree
  end

  create_table "informations", force: :cascade do |t|
    t.string   "title"
    t.string   "link_type"
    t.string   "link"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.bigint   "image_file_size"
    t.datetime "image_updated_at"
    t.text     "desc"
    t.integer  "position",           default: 0
    t.datetime "public_at"
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
    t.integer  "base_number",        default: 0
  end

  create_table "page_items", force: :cascade do |t|
    t.integer  "page_id"
    t.string   "item_type"
    t.string   "link_type"
    t.string   "link"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.bigint   "image_file_size"
    t.datetime "image_updated_at"
    t.text     "content"
    t.integer  "position",           default: 0
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
    t.index ["page_id"], name: "index_page_items_on_page_id", using: :btree
  end

  create_table "pages", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sessions", force: :cascade do |t|
    t.string   "token"
    t.datetime "expires_at"
    t.string   "session_key"
    t.integer  "user_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["user_id"], name: "index_sessions_on_user_id", using: :btree
  end

  create_table "sliders", force: :cascade do |t|
    t.string   "name"
    t.string   "link_type"
    t.string   "link"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.bigint   "image_file_size"
    t.datetime "image_updated_at"
    t.integer  "position",           default: 0
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "uid",                     comment: "微信用户的openid"
    t.json     "raw",                     comment: "原始认证信息"
    t.string   "name",                    comment: "昵称"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "weapp_settings", force: :cascade do |t|
    t.boolean  "information_enable", default: true
    t.string   "share_content"
    t.datetime "created_at",                        null: false
    t.datetime "updated_at",                        null: false
  end

  add_foreign_key "sessions", "users"
end
