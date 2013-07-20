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

ActiveRecord::Schema.define(:version => 20130720151605) do

  create_table "cities", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "name"
  end

  create_table "finishing_services", :force => true do |t|
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.boolean  "printed_labels"
    t.boolean  "woven_labels"
    t.boolean  "folding_bagging"
    t.boolean  "hang_tags"
    t.boolean  "fulfillment"
    t.integer  "printer_id"
  end

  add_index "finishing_services", ["printer_id"], :name => "index_finishing_services_on_printer_id"

  create_table "garment_prices", :force => true do |t|
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
    t.string   "fabric"
    t.string   "cut"
    t.string   "quality"
    t.string   "colors"
    t.string   "inventory"
    t.string   "brand"
    t.string   "style_number"
    t.integer  "price"
    t.integer  "printer_id"
  end

  add_index "garment_prices", ["printer_id"], :name => "index_garment_prices_on_printer_id"

  create_table "print_prices", :force => true do |t|
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.integer  "min_print_qty"
    t.integer  "max_print_qty"
    t.string   "pallet_type"
    t.string   "ink_type"
    t.integer  "base_color"
    t.integer  "one_color"
    t.integer  "two_color"
    t.integer  "three_color"
    t.integer  "four_color"
    t.integer  "five_color"
    t.integer  "six_color"
    t.integer  "seven_color"
    t.integer  "eight_color"
    t.integer  "printer_id"
  end

  add_index "print_prices", ["printer_id"], :name => "index_print_prices_on_printer_id"

  create_table "printer_features", :force => true do |t|
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.boolean  "free_shipping"
    t.boolean  "digital_proof"
    t.boolean  "hotline"
    t.boolean  "art_team"
    t.boolean  "sample"
    t.boolean  "drop_ship"
    t.integer  "printer_id"
  end

  add_index "printer_features", ["printer_id"], :name => "index_printer_features_on_printer_id"

  create_table "printers", :force => true do |t|
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
    t.string   "email"
    t.string   "contact_name"
    t.string   "phone"
    t.string   "address"
    t.integer  "zipcode"
    t.string   "website"
    t.boolean  "pending"
    t.string   "shop_name"
    t.integer  "city_id"
    t.string   "slug"
  end

  add_index "printers", ["slug"], :name => "index_printers_on_slug"

end
