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

ActiveRecord::Schema.define(version: 2019_05_16_132653) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "masters", force: :cascade do |t|
    t.text "name"
    t.text "password_digest"
    t.boolean "admin"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.text "name"
    t.boolean "fill_murray", default: false
    t.boolean "place_cage", default: false
    t.boolean "custom_header", default: false
    t.text "custom_header_text", default: "Hello World"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "master_id"
    t.string "paragraph_background", default: ""
    t.string "paragraph_color", default: ""
    t.boolean "snap", default: false
    t.boolean "stranger_things", default: false
    t.boolean "page_flip", default: false
    t.boolean "otherside", default: false
    t.boolean "marquee", default: false
    t.string "marquee_element", default: "body"
    t.integer "marquee_speed", default: 100
    t.boolean "unicorn_mode", default: false
    t.boolean "word_swapper", default: false
    t.string "existing_word", default: ""
    t.string "new_word", default: ""
    t.boolean "hidden_video", default: false
    t.text "hidden_video_url", default: "oHg5SJYRHA0"
    t.string "hidden_video_element", default: "p"
  end

end
