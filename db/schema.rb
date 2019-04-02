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

ActiveRecord::Schema.define(version: 2019_04_02_164334) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"
  enable_extension "uuid-ossp"

  create_table "foods", force: :cascade do |t|
    t.integer "category"
    t.string "name"
    t.float "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "foods_orders", id: false, force: :cascade do |t|
    t.bigint "food_id", null: false
    t.bigint "order_id", null: false
    t.index ["food_id", "order_id"], name: "index_foods_orders_on_food_id_and_order_id"
    t.index ["order_id", "food_id"], name: "index_foods_orders_on_order_id_and_food_id"
  end

  create_table "orders", force: :cascade do |t|
    t.integer "status"
    t.uuid "number_reference"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
