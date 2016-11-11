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

ActiveRecord::Schema.define(version: 20161111011856) do

  create_table "agency_contacts", force: :cascade do |t|
    t.string   "name"
    t.string   "phone"
    t.string   "email"
    t.integer  "location_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "agency_contacts", ["location_id"], name: "index_agency_contacts_on_location_id"

  create_table "assignments", force: :cascade do |t|
    t.integer  "officer_id"
    t.integer  "job_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "assignments", ["job_id"], name: "index_assignments_on_job_id"
  add_index "assignments", ["officer_id"], name: "index_assignments_on_officer_id"

  create_table "check_ins", force: :cascade do |t|
    t.datetime "check_in_time"
    t.datetime "check_out_time"
    t.string   "crypt_check_code"
    t.integer  "officer_id"
    t.integer  "job_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  add_index "check_ins", ["job_id"], name: "index_check_ins_on_job_id"
  add_index "check_ins", ["officer_id"], name: "index_check_ins_on_officer_id"

  create_table "jobs", force: :cascade do |t|
    t.date     "date"
    t.time     "start_time"
    t.time     "end_time"
    t.string   "crypt_code"
    t.integer  "location_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "jobs", ["location_id"], name: "index_jobs_on_location_id"

  create_table "locations", force: :cascade do |t|
    t.string   "store_number"
    t.string   "store_name"
    t.string   "mall"
    t.string   "address"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "officers", force: :cascade do |t|
    t.string   "name"
    t.string   "phone"
    t.string   "email"
    t.integer  "agency_contact_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  add_index "officers", ["agency_contact_id"], name: "index_officers_on_agency_contact_id"

  create_table "retail_loss_prevention_managers", force: :cascade do |t|
    t.string   "phone"
    t.string   "email"
    t.integer  "location_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "retail_loss_prevention_managers", ["location_id"], name: "index_retail_loss_prevention_managers_on_location_id"

  create_table "store_managers", force: :cascade do |t|
    t.string   "email"
    t.string   "phone"
    t.string   "name"
    t.integer  "location_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "store_managers", ["location_id"], name: "index_store_managers_on_location_id"

end
