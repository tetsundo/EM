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

ActiveRecord::Schema.define(version: 2018_08_04_101234) do

  create_table "admins", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_admins_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true
  end

  create_table "cart_items", force: :cascade do |t|
    t.integer "cart_id"
    t.integer "cd_id"
    t.integer "quantity"
    t.integer "user_id"
    t.integer "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "carts", force: :cascade do |t|
    t.integer "subtotal"
    t.integer "user_id"
    t.integer "cd_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cd_comments", force: :cascade do |t|
    t.text "comment"
    t.integer "user_id"
    t.integer "cd_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "comment_title"
    t.float "star"
  end

  create_table "cds", force: :cascade do |t|
    t.string "jacket_name"
    t.string "genre_id"
    t.string "carts_id"
    t.integer "remaining_quantity"
    t.datetime "release_date"
    t.string "rabel_name"
    t.string "artist_name"
    t.integer "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "disk"
    t.string "image_id"
  end

  create_table "genres", force: :cascade do |t|
    t.string "genre_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sold_items", force: :cascade do |t|
    t.integer "cart_id"
    t.integer "cd_id"
    t.integer "quantity"
    t.integer "user_id"
    t.integer "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "sold_id"
  end

  create_table "solds", force: :cascade do |t|
    t.integer "subtotal"
    t.integer "user_id"
    t.integer "cd_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "cart_id"
    t.string "state"
    t.string "aasm_state"
  end

  create_table "songs", force: :cascade do |t|
    t.string "song_name"
    t.integer "cd_id"
    t.integer "order"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.string "first_name"
    t.string "last_name"
    t.string "first_name_kana"
    t.string "last_name_kana"
    t.string "tell_number"
    t.string "address"
    t.integer "post_code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "soft_destroyed_at"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
