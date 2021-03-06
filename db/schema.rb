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

ActiveRecord::Schema.define(version: 2019_09_27_150431) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "events", force: :cascade do |t|
    t.string "title"
    t.string "img"
    t.string "event_type"
    t.string "city"
    t.string "address"
    t.text "description"
    t.date "start_date"
    t.date "end_date"
    t.time "start_time"
    t.time "end_time"
    t.text "requirements"
    t.string "volunteer_type"
    t.string "volunteer_gender"
    t.string "volunteer_skills"
    t.integer "number_needed"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "organization_profiles", force: :cascade do |t|
    t.string "type"
    t.string "img"
    t.string "address"
    t.string "city"
    t.string "website_link"
    t.string "twitter_link"
    t.string "instagram_link"
    t.string "facebook_link"
    t.string "snapchat_link"
    t.string "whatsup_link"
    t.string "linkedin_link"
    t.string "phone"
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
    t.string "first_name"
    t.string "last_name"
    t.string "username"
    t.string "user_type"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "volunteer_profiles", force: :cascade do |t|
    t.string "interests"
    t.string "skills"
    t.string "img"
    t.string "address"
    t.string "phone"
    t.string "speciality"
    t.date "age"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "city"
  end

end
