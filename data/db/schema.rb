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

ActiveRecord::Schema.define(version: 20160218075025) do

  create_table "transactions", force: :cascade do |t|
    t.integer  "wallet_id",  limit: 4
    t.integer  "user_id",    limit: 4
    t.text     "reciever",   limit: 65535
    t.text     "sender",     limit: 65535
    t.decimal  "amount",                   precision: 10
    t.datetime "created_at",                              null: false
    t.datetime "updated_at",                              null: false
  end

  add_index "transactions", ["user_id"], name: "index_transactions_on_user_id", using: :btree
  add_index "transactions", ["wallet_id"], name: "index_transactions_on_wallet_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",                     limit: 255,   default: "", null: false
    t.string   "encrypted_password",        limit: 255,   default: "", null: false
    t.string   "reset_password_token",      limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",             limit: 4,     default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",        limit: 255
    t.string   "last_sign_in_ip",           limit: 255
    t.datetime "created_at",                                           null: false
    t.datetime "updated_at",                                           null: false
    t.string   "confirmation_token",        limit: 255
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email",         limit: 255
    t.string   "encrypted_otp_secret",      limit: 255
    t.string   "encrypted_otp_secret_iv",   limit: 255
    t.string   "encrypted_otp_secret_salt", limit: 255
    t.integer  "consumed_timestep",         limit: 4
    t.boolean  "otp_required_for_login",    limit: 1
    t.text     "otp_backup_codes",          limit: 65535
  end

  add_index "users", ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true, using: :btree
  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  create_table "wallets", force: :cascade do |t|
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.float    "amount",     limit: 53
    t.text     "address",    limit: 65535
    t.text     "pubkey",     limit: 65535
    t.integer  "user_id",    limit: 4
  end

  add_index "wallets", ["user_id"], name: "index_wallets_on_user_id", using: :btree

  add_foreign_key "transactions", "users", name: "transactions_user_id_fk"
  add_foreign_key "transactions", "wallets", name: "transactions_wallet_id_fk"
  add_foreign_key "wallets", "users", name: "wallets_user_id_fk"
end
