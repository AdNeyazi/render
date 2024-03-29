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

ActiveRecord::Schema[7.0].define(version: 2024_01_30_131011) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "about_us", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "committee_details", force: :cascade do |t|
    t.string "name"
    t.string "contact_details"
    t.string "telephone"
    t.text "vision"
    t.text "mission"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "about_u_id"
    t.index ["about_u_id"], name: "index_committee_details_on_about_u_id"
  end

  create_table "contacts", force: :cascade do |t|
    t.string "team_name"
    t.string "team_email"
    t.string "department"
    t.string "university"
    t.string "professor_name"
    t.string "post"
    t.string "phone_no"
    t.string "professor_email"
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
    t.bigint "about_u_id"
    t.index ["about_u_id"], name: "index_desk_messages_on_about_u_id"
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
    t.bigint "about_u_id"
    t.index ["about_u_id"], name: "index_message_heads_on_about_u_id"
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
    t.bigint "about_u_id"
    t.index ["about_u_id"], name: "index_president_messages_on_about_u_id"
  end

  create_table "query_sends", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "contact_no"
    t.string "subject"
    t.string "message"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "recruits", force: :cascade do |t|
    t.string "name"
    t.string "email_id"
    t.string "contact_no"
    t.string "company_name"
    t.string "role"
    t.string "message"
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

  add_foreign_key "committee_details", "about_us"
  add_foreign_key "desk_messages", "about_us"
  add_foreign_key "message_heads", "about_us"
  add_foreign_key "president_messages", "about_us"
end
