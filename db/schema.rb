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

ActiveRecord::Schema.define(:version => 20131207083840) do

  create_table "admins", :force => true do |t|
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "clubs", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "lunches", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "user_id"
    t.integer  "luncher_id"
    t.string   "city"
    t.integer  "club_id"
  end

  create_table "memberships", :force => true do |t|
    t.integer  "user_id"
    t.integer  "club_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.boolean  "is_admin"
  end

  create_table "pending_memberships", :force => true do |t|
    t.integer  "user_id"
    t.integer  "club_id"
    t.boolean  "is_admin"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.string   "user_first_name"
    t.string   "user_last_name"
    t.string   "user_email"
    t.integer  "inviter_user_id"
  end

  create_table "users", :force => true do |t|
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "city"
    t.string   "password_hash"
    t.string   "password_salt"
    t.boolean  "is_verified"
    t.string   "password_digest"
  end

end
