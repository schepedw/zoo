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

ActiveRecord::Schema.define(version: 20160216202033) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "alligators", force: :cascade do |t|
    t.string "type"
  end

  create_table "animals", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "bears", force: :cascade do |t|
    t.string "type"
  end

  create_table "elephants", force: :cascade do |t|
    t.string "type"
  end

  create_table "giraffes", force: :cascade do |t|
    t.string "type"
  end

  create_table "hippos", force: :cascade do |t|
    t.string "type"
  end

  create_table "hyenas", force: :cascade do |t|
    t.string "type"
  end

  create_table "iguanas", force: :cascade do |t|
    t.string "type"
  end

  create_table "lions", force: :cascade do |t|
    t.string "type"
  end

  create_table "orangutans", force: :cascade do |t|
    t.string "type"
  end

  create_table "pandas", force: :cascade do |t|
    t.string "type"
  end

  create_table "scorpions", force: :cascade do |t|
    t.string "type"
  end

  create_table "tigers", force: :cascade do |t|
    t.string "type"
  end

  create_table "turtles", force: :cascade do |t|
    t.string "type"
  end

  create_table "whales", force: :cascade do |t|
    t.string "type"
  end

  create_table "zebras", force: :cascade do |t|
    t.string "type"
  end

end
