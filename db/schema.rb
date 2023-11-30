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

ActiveRecord::Schema[7.0].define(version: 2023_10_26_131458) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_admin_comments", force: :cascade do |t|
    t.string "namespace"
    t.text "body"
    t.string "resource_type"
    t.bigint "resource_id"
    t.string "author_type"
    t.bigint "author_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["author_type", "author_id"], name: "index_active_admin_comments_on_author"
    t.index ["namespace"], name: "index_active_admin_comments_on_namespace"
    t.index ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource"
  end

  create_table "countries", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_countries_on_name", unique: true
  end

  create_table "country_translations", force: :cascade do |t|
    t.string "name"
    t.string "locale", null: false
    t.bigint "country_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["country_id", "locale"], name: "index_country_translations_on_country_id_and_locale", unique: true
    t.index ["locale"], name: "index_country_translations_on_locale"
  end

  create_table "manufacturer_supply_agreements", force: :cascade do |t|
    t.bigint "manufacturer_id"
    t.bigint "supplier_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["manufacturer_id"], name: "index_manufacturer_supply_agreements_on_manufacturer_id"
    t.index ["supplier_id"], name: "index_manufacturer_supply_agreements_on_supplier_id"
  end

  create_table "manufacturers", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "country_id"
    t.index ["country_id"], name: "index_manufacturers_on_country_id"
    t.index ["name"], name: "index_manufacturers_on_name", unique: true
  end

  create_table "suppliers", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_suppliers_on_name", unique: true
  end

  create_table "toy_translations", force: :cascade do |t|
    t.string "ui_title"
    t.string "slug"
    t.string "locale", null: false
    t.bigint "toy_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["locale"], name: "index_toy_translations_on_locale"
    t.index ["toy_id", "locale"], name: "index_toy_translations_on_toy_id_and_locale", unique: true
  end

  create_table "toys", force: :cascade do |t|
    t.bigint "trade_mark_id"
    t.string "inventory_number", null: false
    t.string "manufacturer_title", null: false
    t.string "ui_title"
    t.string "slug"
    t.integer "purchase_price_cents", null: false
    t.integer "retail_price_cents", null: false
    t.integer "balance_in_warehouse", null: false
    t.boolean "drop_shipping_available", default: false, null: false
    t.boolean "published", default: false, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["inventory_number", "trade_mark_id"], name: "index_toys_on_inventory_number_and_trade_mark_id", unique: true
    t.index ["manufacturer_title", "trade_mark_id"], name: "index_toys_on_manufacturer_title_and_trade_mark_id", unique: true
    t.index ["slug"], name: "index_toys_on_slug", unique: true
    t.index ["trade_mark_id"], name: "index_toys_on_trade_mark_id"
    t.index ["ui_title"], name: "index_toys_on_ui_title", unique: true
  end

  create_table "trade_marks", force: :cascade do |t|
    t.string "name", null: false
    t.bigint "manufacturer_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["manufacturer_id"], name: "index_trade_marks_on_manufacturer_id"
    t.index ["name"], name: "index_trade_marks_on_name", unique: true
  end

  create_table "users", force: :cascade do |t|
    t.string "email", null: false
    t.string "phone"
    t.integer "role", null: false
    t.string "encrypted_password", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "country_translations", "countries"
  add_foreign_key "manufacturers", "countries"
  add_foreign_key "toy_translations", "toys"
end
