# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2022_07_25_082339) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "pgcrypto"
  enable_extension "plpgsql"

  create_table "ocom_carousels", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ocom_carousels_banners", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.string "image_url"
    t.string "link_url"
    t.integer "position"
    t.uuid "carousel_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ocom_products", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.string "name"
    t.float "price"
    t.string "image"
    t.string "description"
    t.string "category_id"
    t.float "discount"
    t.float "stock"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ocom_products_carts", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.string "session_id"
    t.string "product_id"
    t.float "quantity"
    t.float "price"
    t.float "total_price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ocom_products_categories", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.string "name"
    t.string "store_id"
    t.uuid "parent_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ocom_products_images", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.string "image_url"
    t.string "product_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ocom_sessions", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.string "session_id", null: false
    t.uuid "user_id", null: false
    t.string "user_name", null: false
    t.string "user_type", null: false
    t.datetime "expire_at", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ocom_stores", force: :cascade do |t|
    t.string "name"
    t.integer "content_menu_id"
    t.string "description"
    t.integer "owner_id"
    t.boolean "default", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "currency"
    t.string "addr_street"
    t.string "addr_city"
    t.string "addr_region"
    t.string "addr_country"
  end

end
