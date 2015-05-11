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

ActiveRecord::Schema.define(version: 20150511172106) do

  create_table "airports", force: :cascade do |t|
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.string   "airport_code"
    t.string   "airport_name"
  end

  create_table "bookings", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "flight_id"
  end

  add_index "bookings", ["flight_id"], name: "index_bookings_on_flight_id"

  create_table "flights", force: :cascade do |t|
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.integer  "hours"
    t.integer  "minutes"
    t.datetime "departure_date_time"
    t.integer  "origin_airport_id"
    t.integer  "destination_airport_id"
  end

  add_index "flights", ["destination_airport_id"], name: "index_flights_on_destination_airport_id"
  add_index "flights", ["origin_airport_id"], name: "index_flights_on_origin_airport_id"

  create_table "passengers", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "name"
  end

end
