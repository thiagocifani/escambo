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

ActiveRecord::Schema.define(version: 20140425204148) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories_products", id: false, force: true do |t|
    t.integer "product_id"
    t.integer "categories_id"
  end

  create_table "escambo_addresses", force: true do |t|
    t.string   "street_address"
    t.string   "number"
    t.string   "complement"
    t.string   "city"
    t.string   "state"
    t.string   "zipcode"
    t.string   "phone_number"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "escambo_categories", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "escambo_order_items", force: true do |t|
    t.integer  "product_id"
    t.decimal  "price",      precision: 10, scale: 2
    t.integer  "quantity"
    t.integer  "order_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "escambo_order_items", ["order_id"], name: "index_escambo_order_items_on_order_id", using: :btree
  add_index "escambo_order_items", ["product_id"], name: "index_escambo_order_items_on_product_id", using: :btree

  create_table "escambo_orders", force: true do |t|
    t.decimal  "amount",       precision: 10, scale: 2
    t.decimal  "discount",     precision: 10, scale: 2
    t.decimal  "total_amount", precision: 10, scale: 2
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "escambo_payment_types", force: true do |t|
    t.string   "name"
    t.string   "token"
    t.string   "email"
    t.string   "key"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "escambo_payments", force: true do |t|
    t.decimal  "amount"
    t.integer  "order_id"
    t.integer  "payment_type_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "escambo_payments", ["order_id"], name: "index_escambo_payments_on_order_id", using: :btree

  create_table "escambo_products", force: true do |t|
    t.string   "title"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
    t.decimal  "price",              precision: 10, scale: 2
  end

  create_table "escambo_users", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
