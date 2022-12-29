# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2022_12_29_193644) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "configurations", force: :cascade do |t|
    t.string "MinRubyVersion"
    t.string "MaxRubyVersion"
    t.string "MinRailsVersion"
    t.string "MaxRailsVersion"
    t.bigint "project_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["project_id"], name: "index_configurations_on_project_id"
  end

  create_table "dependencies", force: :cascade do |t|
    t.string "name"
    t.string "version"
    t.string "GemName"
    t.bigint "configuration_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["configuration_id"], name: "index_dependencies_on_configuration_id"
  end

  create_table "projects", force: :cascade do |t|
    t.string "name"
    t.datetime "creationTime", precision: nil
    t.text "description"
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_projects_on_user_id"
  end

  create_table "tags", force: :cascade do |t|
    t.string "name"
    t.bigint "configuration_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["configuration_id"], name: "index_tags_on_configuration_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "login"
    t.string "password_digest"
    t.text "description"
    t.text "fio"
    t.text "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "confirmed_at"
  end

  add_foreign_key "configurations", "projects"
  add_foreign_key "dependencies", "configurations"
  add_foreign_key "projects", "users"
  add_foreign_key "tags", "configurations"
end
