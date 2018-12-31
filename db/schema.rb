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

ActiveRecord::Schema.define(version: 2018_12_28_221323) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "events", force: :cascade do |t|
    t.integer "year"
    t.integer "month"
    t.integer "day"
    t.integer "hour"
    t.integer "minute"
    t.boolean "am"
    t.boolean "past"
    t.integer "rating"
    t.integer "winner"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "friendships", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "friend_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["friend_id"], name: "index_friendships_on_friend_id"
    t.index ["user_id"], name: "index_friendships_on_user_id"
  end

  create_table "guests", force: :cascade do |t|
    t.integer "user_id"
    t.integer "event_id"
    t.string "rsvp"
    t.boolean "host"
    t.boolean "voted"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id", "event_id"], name: "index_guests_on_user_id_and_event_id"
  end

  create_table "ideas", force: :cascade do |t|
    t.string "title"
    t.string "street"
    t.string "city"
    t.string "state"
    t.string "zip"
    t.string "neighborhood"
    t.string "category"
    t.string "details"
    t.boolean "winter"
    t.boolean "summer"
    t.boolean "spring"
    t.boolean "fall"
    t.integer "price_range"
    t.string "duration"
    t.string "website"
    t.boolean "expiration"
    t.date "expiration_date"
    t.boolean "private"
    t.integer "submitted_by"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "notifications", force: :cascade do |t|
    t.integer "user_id"
    t.integer "event_id"
    t.string "message"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "seen"
    t.index ["user_id", "event_id"], name: "index_notifications_on_user_id_and_event_id"
  end

  create_table "options", force: :cascade do |t|
    t.integer "event_id"
    t.integer "idea_id"
    t.integer "votes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["event_id", "idea_id"], name: "index_options_on_event_id_and_idea_id"
  end

  create_table "user_ideas", force: :cascade do |t|
    t.integer "idea_id"
    t.integer "user_id"
    t.boolean "archive"
    t.integer "experience_count"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id", "idea_id"], name: "index_user_ideas_on_user_id_and_idea_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "username"
    t.string "password"
    t.string "phone"
    t.string "email"
    t.date "birthday"
    t.string "gender"
    t.string "default_city"
    t.string "bio"
    t.boolean "app_member"
    t.string "img_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "friendships", "users"
end
