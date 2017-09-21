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

ActiveRecord::Schema.define(version: 20170914152129) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "comments", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "recipe_id"
    t.text     "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "comments", ["recipe_id"], name: "index_comments_on_recipe_id", using: :btree
  add_index "comments", ["user_id"], name: "index_comments_on_user_id", using: :btree

  create_table "contacts", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.text     "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "genres", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "notifications", force: :cascade do |t|
    t.boolean  "read",       default: false
    t.integer  "user_id"
    t.integer  "comment_id"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  add_index "notifications", ["comment_id"], name: "index_notifications_on_comment_id", using: :btree
  add_index "notifications", ["user_id"], name: "index_notifications_on_user_id", using: :btree

  create_table "recipes", force: :cascade do |t|
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.string   "title"
    t.string   "knack"
    t.integer  "user_id"
    t.string   "cost"
    t.string   "period"
    t.integer  "good_count"
    t.string   "recipe_image"
    t.string   "comment"
    t.integer  "genre_id"
    t.string   "genre"
    t.string   "material_01"
    t.string   "material_02"
    t.string   "material_03"
    t.string   "material_04"
    t.string   "material_05"
    t.string   "material_06"
    t.string   "material_07"
    t.string   "material_08"
    t.string   "material_09"
    t.string   "material_10"
    t.string   "material_11"
    t.string   "material_12"
    t.string   "material_13"
    t.string   "material_14"
    t.string   "material_15"
    t.string   "material_16"
    t.string   "material_17"
    t.string   "material_18"
    t.string   "material_19"
    t.string   "material_20"
    t.text     "process_01"
    t.text     "process_02"
    t.text     "process_03"
    t.text     "process_04"
    t.text     "process_05"
    t.text     "process_06"
    t.text     "process_07"
    t.text     "process_08"
    t.text     "process_09"
    t.text     "process_10"
    t.text     "process_11"
    t.text     "process_12"
    t.string   "process_image_01"
    t.string   "process_image_02"
    t.string   "process_image_03"
    t.string   "process_image_04"
    t.string   "process_image_05"
    t.string   "process_image_06"
    t.string   "process_image_07"
    t.string   "process_image_08"
    t.string   "process_image_09"
    t.string   "process_image_10"
    t.string   "process_image_11"
    t.string   "process_image_12"
  end

  create_table "relationships", force: :cascade do |t|
    t.integer  "follower_id"
    t.integer  "followed_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "relationships", ["followed_id"], name: "index_relationships_on_followed_id", using: :btree
  add_index "relationships", ["follower_id", "followed_id"], name: "index_relationships_on_follower_id_and_followed_id", unique: true, using: :btree
  add_index "relationships", ["follower_id"], name: "index_relationships_on_follower_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "name"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.string   "uid",                    default: "", null: false
    t.string   "provider",               default: "", null: false
    t.string   "image_url"
    t.string   "avatar"
  end

  add_index "users", ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true, using: :btree
  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  add_index "users", ["uid", "provider"], name: "index_users_on_uid_and_provider", unique: true, using: :btree

  add_foreign_key "comments", "recipes"
  add_foreign_key "comments", "users"
  add_foreign_key "notifications", "comments"
  add_foreign_key "notifications", "users"
end
