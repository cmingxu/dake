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

ActiveRecord::Schema.define(:version => 20140623072306) do

  create_table "balance_details", :force => true do |t|
    t.integer  "amount"
    t.integer  "balance_id"
    t.string   "reason"
    t.string   "detail_reason"
    t.text     "desc"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.string   "paizhao"
    t.string   "cate"
    t.integer  "location_id"
    t.integer  "route_id"
    t.date     "balance_date"
    t.string   "status"
  end

  create_table "balances", :force => true do |t|
    t.integer  "user_id"
    t.string   "paizhao"
    t.string   "location_id"
    t.text     "desc"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
    t.integer  "route_id"
    t.string   "cate"
    t.date     "balance_date"
    t.string   "status"
  end

  create_table "bugs", :force => true do |t|
    t.text     "desc"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "cargos", :force => true do |t|
    t.string   "serial_num"
    t.integer  "from_huozhan_id"
    t.integer  "to_huozhan_id"
    t.string   "from_huozhan_name"
    t.string   "to_huozhan_name"
    t.integer  "huoyun_route_id"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
    t.integer  "user_id"
    t.string   "siji"
    t.string   "tel"
    t.string   "paizhao"
    t.string   "cargo_status"
  end

  create_table "drivers", :force => true do |t|
    t.string   "name"
    t.integer  "age"
    t.string   "phone"
    t.string   "address"
    t.string   "salary"
    t.string   "start_date"
    t.string   "end_date"
    t.text     "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.string   "duty"
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
    t.string   "paizhao"
    t.string   "sicheng"
    t.string   "tel"
  end

  create_table "huozhans", :force => true do |t|
    t.string   "huozhan_name"
    t.string   "huozhan_address"
    t.string   "huozhan_tel"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.integer  "user_id"
  end

  create_table "item_records", :force => true do |t|
    t.integer  "item_id"
    t.integer  "user_id"
    t.integer  "num"
    t.string   "usage_type"
    t.integer  "price"
    t.string   "vehicle_id"
    t.text     "reason"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "items", :force => true do |t|
    t.string   "name"
    t.string   "xinghao"
    t.integer  "amount"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "unit"
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

  create_table "message_users", :force => true do |t|
    t.integer  "message_id"
    t.integer  "user_id"
    t.boolean  "read"
    t.datetime "read_at"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "messages", :force => true do |t|
    t.text     "content"
    t.text     "title"
    t.integer  "created_by"
    t.string   "attach1"
    t.string   "attach2"
    t.string   "attach3"
    t.string   "attach4"
    t.string   "attach5"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "pages", :force => true do |t|
    t.string   "slug"
    t.text     "content"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "name"
    t.string   "title"
  end

  create_table "passenger_record_details", :force => true do |t|
    t.integer  "passenger_record_id"
    t.integer  "passenger_count"
    t.integer  "total_price"
    t.integer  "location_id"
    t.string   "location_name"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
    t.string   "direction"
  end

  create_table "passenger_records", :force => true do |t|
    t.date     "record_date"
    t.integer  "vehicle_id"
    t.string   "created_by"
    t.integer  "total_price"
    t.datetime "created_at",                 :null => false
    t.datetime "updated_at",                 :null => false
    t.integer  "user_id"
    t.integer  "total_count", :default => 0
  end

  create_table "reasons", :force => true do |t|
    t.string   "reason"
    t.text     "details"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "cate"
  end

  create_table "reminds", :force => true do |t|
    t.string   "name"
    t.integer  "repeating"
    t.integer  "remind"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "routes", :force => true do |t|
    t.integer  "start_location_id"
    t.integer  "end_location_id"
    t.integer  "vehicle_id"
    t.string   "driver_names"
    t.string   "mobile"
    t.string   "start_when"
    t.string   "end_when"
    t.text     "paths"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  create_table "shipping_cargos", :force => true do |t|
    t.integer  "shipping_id"
    t.integer  "cargo_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
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
    t.integer  "daishouhuokuan_amount"
    t.integer  "daishouhuokuan_fee"
    t.integer  "huowu_baozhi"
    t.datetime "created_at",                 :null => false
    t.datetime "updated_at",                 :null => false
    t.integer  "from_huozhan_id"
    t.integer  "to_huozhan_id"
    t.integer  "baozhi_fee"
    t.integer  "user_id"
    t.string   "serial_num"
    t.string   "from_huozhan_name"
    t.string   "to_huozhan_name"
    t.text     "description"
    t.boolean  "is_daishouhuokuan_fee_paid"
    t.boolean  "is_daishouhuokuan_shouqu"
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

  create_table "vehicle_reminds", :force => true do |t|
    t.integer  "vehicle_id"
    t.integer  "remind_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.datetime "happend_at"
    t.text     "description"
  end

  create_table "vehicles", :force => true do |t|
    t.string   "paizhao"
    t.string   "xinghao"
    t.string   "leixing"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
