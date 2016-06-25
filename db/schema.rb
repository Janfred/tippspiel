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

ActiveRecord::Schema.define(version: 20160624210742) do

  create_table "gameguestteams", force: :cascade do |t|
    t.integer  "team_id"
    t.integer  "game_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "gameguestteams", ["game_id"], name: "index_gameguestteams_on_game_id"
  add_index "gameguestteams", ["team_id"], name: "index_gameguestteams_on_team_id"

  create_table "gamehometeams", force: :cascade do |t|
    t.integer  "team_id"
    t.integer  "game_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "gamehometeams", ["game_id"], name: "index_gamehometeams_on_game_id"
  add_index "gamehometeams", ["team_id"], name: "index_gamehometeams_on_team_id"

  create_table "games", force: :cascade do |t|
    t.integer  "matchday_id"
    t.string   "gameId"
    t.datetime "start"
    t.boolean  "finished"
    t.decimal  "result1"
    t.decimal  "result2"
    t.decimal  "factor"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "games", ["matchday_id"], name: "index_games_on_matchday_id"

  create_table "group_users", force: :cascade do |t|
    t.integer  "group_id"
    t.integer  "user_id"
    t.string   "display_name"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "group_users", ["group_id"], name: "index_group_users_on_group_id"
  add_index "group_users", ["user_id"], name: "index_group_users_on_user_id"

  create_table "groups", force: :cascade do |t|
    t.string   "name"
    t.boolean  "locked"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "groups", ["user_id"], name: "index_groups_on_user_id"

  create_table "last_changes", force: :cascade do |t|
    t.integer  "matchday_id"
    t.datetime "change_time"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "last_changes", ["matchday_id"], name: "index_last_changes_on_matchday_id"

  create_table "leagues", force: :cascade do |t|
    t.string   "name"
    t.string   "leagueId"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "matchdays", force: :cascade do |t|
    t.integer  "season_id"
    t.string   "name"
    t.string   "matchdayId"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.integer  "last_change_id"
  end

  add_index "matchdays", ["last_change_id"], name: "index_matchdays_on_last_change_id"
  add_index "matchdays", ["season_id"], name: "index_matchdays_on_season_id"

  create_table "seasons", force: :cascade do |t|
    t.integer  "league_id"
    t.string   "name"
    t.string   "seasonId"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "seasons", ["league_id"], name: "index_seasons_on_league_id"

  create_table "teams", force: :cascade do |t|
    t.string   "name"
    t.string   "short"
    t.string   "icon_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "username"
    t.boolean  "admin"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
  end

  add_index "users", ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true
  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
