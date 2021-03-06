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

ActiveRecord::Schema.define(version: 20171002190703) do

  create_table "aluguels", force: :cascade do |t|
    t.integer  "veiculo_id"
    t.integer  "usuario_id"
    t.date     "dataInicio"
    t.date     "datafim"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "aluguels", ["usuario_id"], name: "index_aluguels_on_usuario_id"
  add_index "aluguels", ["veiculo_id"], name: "index_aluguels_on_veiculo_id"

  create_table "usuarios", force: :cascade do |t|
    t.string   "nome"
    t.string   "email"
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
    t.string   "password_digest"
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
  end

  add_index "usuarios", ["email"], name: "index_usuarios_on_email", unique: true

  create_table "veiculos", force: :cascade do |t|
    t.string   "placa"
    t.string   "marca"
    t.string   "modelo"
    t.string   "cor"
    t.boolean  "arCondicionado"
    t.boolean  "vidroEletrico"
    t.boolean  "travaEletrica"
    t.boolean  "cambioAutomatio"
    t.float    "valorDiaria"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

end
