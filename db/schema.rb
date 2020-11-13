# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_11_13_175715) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "grants", force: :cascade do |t|
    t.string "researcher"
    t.text "study_question"
    t.date "start_date"
    t.string "budget"
    t.string "login_accounts"
    t.string "funding_source"
    t.string "population_size"
    t.string "length_of_study"
    t.string "communication"
    t.string "platform"
    t.string "computation"
    t.string "third_party"
    t.string "content"
    t.string "HIPAA"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
