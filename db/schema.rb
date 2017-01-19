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

ActiveRecord::Schema.define(version: 20170119024913) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "animals", force: :cascade do |t|
    t.string   "nombre"
    t.string   "typo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "persona_id"
  end

  add_index "animals", ["persona_id"], name: "index_animals_on_persona_id", using: :btree

  create_table "hijos", force: :cascade do |t|
    t.string   "nombre"
    t.integer  "edad"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "persona_id"
  end

  add_index "hijos", ["persona_id"], name: "index_hijos_on_persona_id", using: :btree

  create_table "personas", force: :cascade do |t|
    t.string   "nombre"
    t.string   "edad"
    t.string   "nacionalidad"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.string   "direccion"
  end

  add_foreign_key "animals", "personas"
  add_foreign_key "hijos", "personas"
end
