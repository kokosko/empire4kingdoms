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

ActiveRecord::Schema.define(version: 20151210173911) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "buildings", force: :cascade do |t|
    t.string  "name"
    t.string  "description"
    t.integer "level"
    t.integer "wood"
    t.integer "stone"
    t.integer "charcoal"
    t.integer "oil"
    t.integer "glass"
    t.integer "architect"
  end

  create_table "equipment", force: :cascade do |t|
    t.integer "class"
    t.integer "accessory"
    t.integer "kind"
    t.integer "level",       default: 0
    t.decimal "params_comm", default: [#<BigDecimal:7fde937b7338,'0.0',9(18)>, #<BigDecimal:7fde937b72c0,'0.0',9(18)>, #<BigDecimal:7fde937b7248,'0.0',9(18)>, #<BigDecimal:7fde937b71d0,'0.0',9(18)>, #<BigDecimal:7fde937b7158,'0.0',9(18)>, #<BigDecimal:7fde937b70e0,'0.0',9(18)>, #<BigDecimal:7fde937b7068,'0.0',9(18)>, #<BigDecimal:7fde937b6ff0,'0.0',9(18)>, #<BigDecimal:7fde937b6f78,'0.0',9(18)>, #<BigDecimal:7fde937b6f00,'0.0',9(18)>, #<BigDecimal:7fde937b6e88,'0.0',9(18)>, #<BigDecimal:7fde937b6e10,'0.0',9(18)>, #<BigDecimal:7fde937b6d98,'0.0',9(18)>], array: true
    t.decimal "params_cast", default: [#<BigDecimal:7fde937b5ec0,'0.0',9(18)>, #<BigDecimal:7fde937b5e48,'0.0',9(18)>, #<BigDecimal:7fde937b5dd0,'0.0',9(18)>, #<BigDecimal:7fde937b5d58,'0.0',9(18)>, #<BigDecimal:7fde937b5ce0,'0.0',9(18)>, #<BigDecimal:7fde937b5c68,'0.0',9(18)>, #<BigDecimal:7fde937b5bf0,'0.0',9(18)>, #<BigDecimal:7fde937b5b78,'0.0',9(18)>, #<BigDecimal:7fde937b5b00,'0.0',9(18)>, #<BigDecimal:7fde937b5a88,'0.0',9(18)>, #<BigDecimal:7fde937b5a10,'0.0',9(18)>],                                                                                 array: true
  end

  create_table "servers", force: :cascade do |t|
    t.string "name"
  end

  create_table "units", force: :cascade do |t|
    t.string  "name"
    t.string  "image"
    t.integer "kind"
    t.integer "power"
    t.integer "defmelee"
    t.integer "defranged"
    t.integer "capasity"
    t.integer "speed"
    t.integer "food"
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
