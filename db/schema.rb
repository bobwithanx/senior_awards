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

ActiveRecord::Schema.define(version: 20180508183053) do

  create_table "advisories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "advisories_students", id: false, force: :cascade do |t|
    t.integer "student_id", null: false
    t.integer "advisory_id", null: false
  end

  create_table "clubs", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "clubs_students", id: false, force: :cascade do |t|
    t.integer "student_id", null: false
    t.integer "club_id", null: false
  end

  create_table "counselors", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "counselors_students", id: false, force: :cascade do |t|
    t.integer "student_id", null: false
    t.integer "counselor_id", null: false
  end

  create_table "cte_programs", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cte_programs_students", id: false, force: :cascade do |t|
    t.integer "student_id", null: false
    t.integer "cte_program_id", null: false
  end

  create_table "future_plans", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "future_plans_students", id: false, force: :cascade do |t|
    t.integer "student_id", null: false
    t.integer "future_plan_id", null: false
  end

  create_table "scholarships", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "scholarships_students", id: false, force: :cascade do |t|
    t.integer "student_id", null: false
    t.integer "scholarship_id", null: false
  end

  create_table "students", force: :cascade do |t|
    t.string "firstname"
    t.string "lastname"
    t.string "id_number"
    t.text "blurb"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "advisory_id"
    t.integer "counselor_id"
    t.string "photo"
    t.datetime "queued_at"
    t.datetime "completed_at"
    t.index ["advisory_id"], name: "index_students_on_advisory_id"
    t.index ["counselor_id"], name: "index_students_on_counselor_id"
  end

end
