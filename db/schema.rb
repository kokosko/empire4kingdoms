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

ActiveRecord::Schema.define(version: 20151028194619) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "equipment", force: :cascade do |t|
    t.integer "class"
    t.integer "accessory"
    t.integer "kind"
    t.integer "level",       default: 0
    t.decimal "params_comm", default: [#<BigDecimal:7f559bc431d0,'0.0',9(18)>, #<BigDecimal:7f559bc430e0,'0.0',9(18)>, #<BigDecimal:7f559bc43068,'0.0',9(18)>, #<BigDecimal:7f559bc42ff0,'0.0',9(18)>, #<BigDecimal:7f559bc42f00,'0.0',9(18)>, #<BigDecimal:7f559bc42e88,'0.0',9(18)>, #<BigDecimal:7f559bc42e10,'0.0',9(18)>, #<BigDecimal:7f559bc42d70,'0.0',9(18)>, #<BigDecimal:7f559bc42c58,'0.0',9(18)>, #<BigDecimal:7f559bc42be0,'0.0',9(18)>, #<BigDecimal:7f559bc42b18,'0.0',9(18)>, #<BigDecimal:7f559bc42910,'0.0',9(18)>, #<BigDecimal:7f559bc42820,'0.0',9(18)>], array: true
    t.decimal "params_cast", default: [#<BigDecimal:7f559bc40ea8,'0.0',9(18)>, #<BigDecimal:7f559bc40d40,'0.0',9(18)>, #<BigDecimal:7f559bc40cc8,'0.0',9(18)>, #<BigDecimal:7f559bc40c50,'0.0',9(18)>, #<BigDecimal:7f559bc40b60,'0.0',9(18)>, #<BigDecimal:7f559bc40ae8,'0.0',9(18)>, #<BigDecimal:7f559bc40a70,'0.0',9(18)>, #<BigDecimal:7f559bc409a8,'0.0',9(18)>, #<BigDecimal:7f559bc408b8,'0.0',9(18)>, #<BigDecimal:7f559bc40818,'0.0',9(18)>, #<BigDecimal:7f559bc407a0,'0.0',9(18)>],                                                                                 array: true
  end

  create_table "servers", force: :cascade do |t|
    t.string "name"
  end

  create_table "users", force: :cascade do |t|
    t.string  "uid"
    t.string  "email"
    t.string  "name"
    t.string  "image"
    t.string  "link"
    t.string  "oauth_token"
    t.time    "oauth_expires_at"
    t.integer "x"
    t.integer "y"
    t.boolean "show_link",        default: false
    t.string  "nickname"
    t.integer "server_id"
  end

end
