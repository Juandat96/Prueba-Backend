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

ActiveRecord::Schema.define(version: 20160719022621) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "inventories", force: true do |t|
    t.string   "serialnumber"
    t.integer  "size"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "inventories", ["serialnumber"], name: "index_inventories_on_serialnumber", unique: true, using: :btree

  create_table "operations", force: true do |t|
    t.string   "workdoneby"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "worker_id"
    t.integer  "inventory_id"
  end

  add_index "operations", ["inventory_id"], name: "index_operations_on_inventory_id", using: :btree
  add_index "operations", ["worker_id"], name: "index_operations_on_worker_id", using: :btree

  create_table "registers", force: true do |t|
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "workers", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
