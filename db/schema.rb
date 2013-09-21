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

ActiveRecord::Schema.define(:version => 20130921064445) do

  create_table "balances", :force => true do |t|
    t.decimal  "amount",        :precision => 10, :scale => 0
    t.integer  "user_id"
    t.string   "paizhao"
    t.string   "location_id"
    t.string   "reason"
    t.string   "detail_reason"
    t.text     "desc"
    t.datetime "created_at",                                   :null => false
    t.datetime "updated_at",                                   :null => false
    t.integer  "route_id"
    t.string   "cate"
  end

  create_table "bugs", :force => true do |t|
    t.text     "desc"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "foos", :force => true do |t|
    t.string   "foo"
    t.string   "bar"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "huoyun_routes", :force => true do |t|
    t.integer  "from_huozhan_id"
    t.string   "to_huozhan_id"
    t.string   "fahuo_time"
    t.string   "daohuo_time"
    t.text     "destription"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "huozhans", :force => true do |t|
    t.string   "huozhan_name"
    t.string   "huozhan_address"
    t.string   "huozhan_tel"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.integer  "user_id"
  end

  create_table "locations", :force => true do |t|
    t.string   "name"
    t.string   "fuzeren"
    t.string   "fuzeren_mobile"
    t.string   "fuzeren_address"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.integer  "user_id"
  end

  create_table "pages", :force => true do |t|
    t.string   "slug"
    t.text     "content"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "reasons", :force => true do |t|
    t.string   "reason"
    t.text     "details"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "cate"
  end

  create_table "routes", :force => true do |t|
    t.integer  "start_location_id"
    t.integer  "end_location_id"
    t.string   "paizhao"
    t.string   "xinghao"
    t.string   "driver_names"
    t.string   "mobile"
    t.string   "start_when"
    t.string   "end_when"
    t.text     "paths"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  create_table "shippings", :force => true do |t|
    t.string   "sender_name"
    t.string   "sender_tel"
    t.string   "receiver_name"
    t.string   "receiver_tel"
    t.integer  "fee"
    t.string   "huowu_name"
    t.string   "huowu_danwei"
    t.string   "huowu_amount"
    t.string   "huowu_beizhu"
    t.string   "status"
    t.boolean  "is_paid"
    t.boolean  "is_daishouhuokuan"
    t.integer  "daishouhuokuan_amount"
    t.integer  "daishouhuokuan_fee"
    t.integer  "huowu_baozhi"
    t.datetime "created_at",            :null => false
    t.datetime "updated_at",            :null => false
    t.integer  "from_huozhan_id"
    t.integer  "to_huozhan_id"
    t.integer  "baozhi_fee"
    t.integer  "user_id"
    t.string   "serial_num"
    t.string   "from_huozhan_name"
    t.string   "to_huozhan_name"
  end

  add_index "shippings", ["serial_num"], :name => "index_shippings_on_serial_num"

  create_table "users", :force => true do |t|
    t.string   "email"
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
    t.string   "name"
    t.string   "mobile"
    t.string   "login"
    t.string   "roles"
  end

  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
