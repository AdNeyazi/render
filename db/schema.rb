# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2024_01_29_101256) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "about_us", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "message_head_id"
    t.bigint "committee_detail_id"
    t.bigint "president_message_id"
    t.bigint "desk_message_id"
    t.index ["committee_detail_id"], name: "index_about_us_on_committee_detail_id"
    t.index ["desk_message_id"], name: "index_about_us_on_desk_message_id"
    t.index ["message_head_id"], name: "index_about_us_on_message_head_id"
    t.index ["president_message_id"], name: "index_about_us_on_president_message_id"
  end

  create_table "committee_details", force: :cascade do |t|
    t.string "name"
    t.string "contact_details"
    t.string "telephone"
    t.text "vision"
    t.text "mission"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "desk_messages", force: :cascade do |t|
    t.string "name"
    t.string "photo"
    t.text "description"
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "events", force: :cascade do |t|
    t.string "event_title"
    t.text "description"
    t.string "event_location"
    t.string "event_type"
    t.string "event_image_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "fund_appeals", force: :cascade do |t|
    t.string "title"
    t.text "content"
    t.string "beneficiary_name"
    t.string "bank_name"
    t.string "bank_address"
    t.string "account_number"
    t.string "IFSC_code"
    t.string "name"
    t.string "email"
    t.string "mobile_no"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "members", force: :cascade do |t|
    t.string "member_name"
    t.string "course"
    t.string "member_image_url"
    t.integer "year_of_passing"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "message_heads", force: :cascade do |t|
    t.string "title"
    t.string "photo"
    t.text "description"
    t.string "name"
    t.string "department"
    t.string "post"
    t.string "university"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "newsrooms", force: :cascade do |t|
    t.string "title"
    t.string "event_image"
    t.text "content"
    t.date "post_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "president_messages", force: :cascade do |t|
    t.string "title"
    t.string "photo"
    t.text "description"
    t.string "name"
    t.string "post"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "jti"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["jti"], name: "index_users_on_jti", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "about_us", "committee_details"
  add_foreign_key "about_us", "desk_messages"
  add_foreign_key "about_us", "message_heads"
  add_foreign_key "about_us", "president_messages"
end
