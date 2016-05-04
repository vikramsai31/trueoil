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

ActiveRecord::Schema.define(version: 20150617210007) do

  create_table "contacts", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.integer  "zip"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "dealer_bkp_ca", id: false, force: true do |t|
    t.integer  "id",                      default: 0, null: false
    t.string   "businessname"
    t.string   "address"
    t.string   "city"
    t.integer  "zip"
    t.integer  "phone",         limit: 8
    t.string   "contactperson"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "state"
  end

  create_table "dealer_ca", force: true do |t|
    t.string   "businessname"
    t.string   "address"
    t.string   "city"
    t.integer  "zip"
    t.integer  "phone",         limit: 8
    t.string   "contactperson"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "state"
  end

  create_table "dealer_mas", id: false, force: true do |t|
    t.integer  "id",                      default: 0, null: false
    t.string   "businessname"
    t.string   "address"
    t.string   "city"
    t.integer  "zip"
    t.integer  "phone",         limit: 8
    t.string   "contactperson"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "state"
  end

  create_table "dealer_mas_bkp", id: false, force: true do |t|
    t.integer  "id",                      default: 0, null: false
    t.string   "businessname"
    t.string   "address"
    t.string   "city"
    t.integer  "zip"
    t.integer  "phone",         limit: 8
    t.string   "contactperson"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "state"
  end

  create_table "dealer_prices", force: true do |t|
    t.decimal  "price",                 precision: 6, scale: 2
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "dealer_id"
    t.string   "service_type"
    t.integer  "dealerservice_type_id"
  end

  create_table "dealer_services", force: true do |t|
    t.string   "service_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "dealers", force: true do |t|
    t.string   "businessname"
    t.string   "address"
    t.string   "city"
    t.integer  "zip"
    t.integer  "phone",         limit: 8
    t.string   "contactperson"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "state"
    t.float    "latitude"
    t.float    "longitude"
  end

  create_table "dealers1", force: true do |t|
    t.string   "businessname"
    t.string   "address"
    t.string   "city"
    t.integer  "zip"
    t.integer  "phone",         limit: 8
    t.string   "contactperson"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "state"
  end

  create_table "dealers_031015", id: false, force: true do |t|
    t.integer  "id",                      default: 0, null: false
    t.string   "businessname"
    t.string   "address"
    t.string   "city"
    t.integer  "zip"
    t.integer  "phone",         limit: 8
    t.string   "contactperson"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "state"
    t.float    "latitude"
    t.float    "longitude"
  end

  create_table "dealers_all_ca", id: false, force: true do |t|
    t.integer  "id",                      default: 0, null: false
    t.string   "businessname"
    t.string   "address"
    t.string   "city"
    t.integer  "zip"
    t.integer  "phone",         limit: 8
    t.string   "contactperson"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "state"
  end

  create_table "dealers_new", id: false, force: true do |t|
    t.integer "id",                                                  null: false
    t.string  "businessname"
    t.string  "address"
    t.string  "city"
    t.string  "state",          limit: 10
    t.integer "zip"
    t.integer "phone",          limit: 8
    t.decimal "conv_oil_price",              precision: 8, scale: 2
    t.decimal "syn_oil_price",               precision: 8, scale: 2
    t.string  "comments",       limit: 3000
    t.string  "coupon",         limit: 100
  end

  create_table "dealers_new1", force: true do |t|
    t.string   "businessname"
    t.string   "address"
    t.string   "city"
    t.integer  "zip"
    t.integer  "phone",         limit: 8
    t.string   "contactperson"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "state"
    t.float    "latitude"
    t.float    "longitude"
  end

  create_table "dealers_pur", force: true do |t|
    t.string   "businessname"
    t.string   "address"
    t.string   "city"
    t.integer  "zip"
    t.integer  "phone",         limit: 8
    t.string   "contactperson"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "state"
  end

  create_table "subscriptions", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "address"
    t.string   "city"
    t.string   "state"
    t.integer  "zip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tmp", id: false, force: true do |t|
    t.integer "id"
    t.integer "phone", limit: 8
  end

  add_index "tmp", ["id"], name: "id", using: :btree

  create_table "user_car_services", force: true do |t|
    t.integer  "user_id"
    t.integer  "car_id"
    t.integer  "mileage"
    t.string   "service_type"
    t.date     "service_date"
    t.string   "reminder_date", limit: 10
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "user_cars", force: true do |t|
    t.integer  "user_id"
    t.string   "make"
    t.string   "model"
    t.integer  "year"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "car_name",   limit: 100
  end

  create_table "user_reminders", force: true do |t|
    t.integer  "user_id"
    t.integer  "car_id"
    t.string   "service_type"
    t.date     "reminder_date"
    t.integer  "active_status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email",                            default: "", null: false
    t.string   "encrypted_password",               default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                    default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "zip",                    limit: 8
    t.string   "provider"
    t.string   "uid"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  create_table "ut_dealers", force: true do |t|
    t.string   "businessname"
    t.string   "address"
    t.string   "city"
    t.integer  "zip"
    t.integer  "phone",         limit: 8
    t.string   "contactperson"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "state"
  end

  create_table "zipcodes", id: false, force: true do |t|
    t.integer "zip"
  end

end
