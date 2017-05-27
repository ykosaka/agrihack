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

ActiveRecord::Schema.define(version: 20170527025349) do

  create_table "vegetable_informations", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin" do |t|
    t.integer "vegetable_id"
    t.integer "market_id"
    t.integer "1_month_price"
    t.integer "1_month_quantity"
    t.integer "2_month_price"
    t.integer "2_month_quantity"
    t.integer "3_month_price"
    t.integer "3_month_quantity"
    t.integer "4_month_price"
    t.integer "4_month_quantity"
    t.integer "5_month_price"
    t.integer "5_month_quantity"
    t.integer "6_month_price"
    t.integer "6_month_quantity"
    t.integer "7_month_price"
    t.integer "7_month_quantity"
    t.integer "8_month_price"
    t.integer "8_month_quantity"
    t.integer "9_month_price"
    t.integer "9_month_quantity"
    t.integer "10_month_price"
    t.integer "10_month_quantity"
    t.integer "11_month_price"
    t.integer "11_month_quantity"
    t.integer "12_month_price"
    t.integer "12_month_quantity"
    t.integer "total_price"
    t.integer "average_price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "vegetables", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin" do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "yasais", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin" do |t|
    t.string "name"
    t.integer "quantity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
