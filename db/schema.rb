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

ActiveRecord::Schema.define(version: 20160709010137) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "alumnos", force: :cascade do |t|
    t.string   "nombre"
    t.integer  "grupo_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "alumnos", ["grupo_id"], name: "index_alumnos_on_grupo_id", using: :btree

  create_table "grupos", force: :cascade do |t|
    t.string   "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "grupos_profesors", force: :cascade do |t|
    t.integer "grupo_id"
    t.integer "profesor_id"
  end

  add_index "grupos_profesors", ["grupo_id"], name: "index_grupos_profesors_on_grupo_id", using: :btree
  add_index "grupos_profesors", ["profesor_id"], name: "index_grupos_profesors_on_profesor_id", using: :btree

  create_table "profesors", force: :cascade do |t|
    t.string   "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "alumnos", "grupos"
  add_foreign_key "grupos_profesors", "grupos"
  add_foreign_key "grupos_profesors", "profesors"
end
