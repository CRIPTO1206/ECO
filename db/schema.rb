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

ActiveRecord::Schema.define(version: 2018_09_01_160804) do

  create_table "multimedia", force: :cascade do |t|
    t.string "alt"
    t.string "url"
    t.string "tipoMultimedia"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "nota", force: :cascade do |t|
    t.string "nombre"
    t.string "descripcion"
    t.boolean "activo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "puntos", force: :cascade do |t|
    t.string "nombre"
    t.string "direccion"
    t.string "comentarios"
    t.string "latitud"
    t.string "longitud"
    t.date "fechaActualizacion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "puntos_tipos", id: false, force: :cascade do |t|
    t.integer "punto_id", null: false
    t.integer "tipo_id", null: false
    t.index ["punto_id"], name: "index_puntos_tipos_on_punto_id"
    t.index ["tipo_id"], name: "index_puntos_tipos_on_tipo_id"
  end

  create_table "tipos", force: :cascade do |t|
    t.string "nombre"
    t.string "descripcion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
