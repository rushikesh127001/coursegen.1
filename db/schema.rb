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

ActiveRecord::Schema.define(version: 20191117125754) do

  create_table "courses", force: :cascade do |t|
    t.string   "coursecode"
    t.string   "coursetitle"
    t.integer  "semester"
    t.string   "program"
    t.string   "section"
    t.string   "subject"
    t.string   "modulecoordinator1"
    t.string   "modulecoordinator2"
    t.string   "co1"
    t.string   "co2"
    t.string   "co3"
    t.string   "co4"
    t.string   "co5"
    t.integer  "po1"
    t.integer  "po2"
    t.integer  "po3"
    t.integer  "po4"
    t.integer  "po5"
    t.integer  "po6"
    t.integer  "po7"
    t.integer  "po8"
    t.integer  "po9"
    t.integer  "po10"
    t.integer  "po11"
    t.integer  "po12"
    t.integer  "pso1"
    t.integer  "pso2"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "username"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

end
