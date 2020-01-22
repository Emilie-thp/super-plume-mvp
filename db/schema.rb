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

ActiveRecord::Schema.define(version: 2020_01_22_134324) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "offers", force: :cascade do |t|
    t.string "seller_title"
    t.string "seller_first_name"
    t.string "seller_last_name"
    t.string "seller_adress"
    t.string "seller_zipcode"
    t.string "seller_city"
    t.string "buyer_title"
    t.string "buyer_first_name"
    t.string "buyer_last_name"
    t.string "buyer_adress"
    t.string "buyer_zipcode"
    t.string "buyer_city"
    t.string "buyer_email"
    t.string "property_adress"
    t.string "property_zipcode"
    t.string "property_city"
    t.string "property_type"
    t.string "property_surface"
    t.float "property_price"
    t.string "property_price_letters"
    t.date "date_max"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
