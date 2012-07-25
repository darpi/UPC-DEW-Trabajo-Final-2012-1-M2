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

ActiveRecord::Schema.define(:version => 20120724232435) do

  create_table "customers", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "address"
    t.string   "image"
    t.string   "phone"
    t.string   "cell_phone"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "doctors", :force => true do |t|
    t.string   "administrator"
    t.string   "name_surname"
    t.string   "mail"
    t.string   "phone"
    t.string   "user"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "homes", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "patients", :force => true do |t|
    t.string   "owner"
    t.string   "species"
    t.string   "race"
    t.string   "gender"
    t.string   "blood_type"
    t.string   "sterilized"
    t.string   "size"
    t.string   "activity"
    t.integer  "weight"
    t.date     "date_of_birth"
    t.integer  "customer_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  add_index "patients", ["customer_id"], :name => "index_patients_on_customer_id"

  create_table "prospectus", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "address"
    t.string   "image"
    t.string   "phone"
    t.string   "cell_phone"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "vaccines", :force => true do |t|
    t.string   "name"
    t.integer  "patients_id"
    t.integer  "customers_id"
    t.string   "phone"
    t.string   "address"
    t.date     "date"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  add_index "vaccines", ["customers_id"], :name => "index_vaccines_on_customers_id"
  add_index "vaccines", ["patients_id"], :name => "index_vaccines_on_patients_id"

end
