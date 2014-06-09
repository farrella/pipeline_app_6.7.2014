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

ActiveRecord::Schema.define(version: 20140609224505) do

  create_table "bankers", force: true do |t|
    t.string   "name"
    t.string   "division"
    t.string   "email"
    t.string   "phone"
    t.integer  "marketer_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "clients", force: true do |t|
    t.string   "name"
    t.string   "contact_person"
    t.string   "contact_email"
    t.string   "contact_phone"
    t.string   "metavante_id"
    t.string   "onboarding_status"
    t.integer  "marketer_id"
    t.text     "notes"
    t.integer  "banker_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "loanterms", force: true do |t|
    t.string   "client_id"
    t.float    "notional"
    t.date     "maturity"
    t.string   "term"
    t.string   "amortization"
    t.string   "index"
    t.float    "credit_spread"
    t.string   "debt_type"
    t.string   "closing"
    t.float    "probability"
    t.text     "notes"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "marketers", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "avatar_url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "quotes", force: true do |t|
    t.string   "loanterm_id"
    t.string   "product"
    t.float    "rate"
    t.float    "markup"
    t.integer  "est_fee"
    t.integer  "premium"
    t.text     "notes"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "username"
    t.string   "avatar_url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
