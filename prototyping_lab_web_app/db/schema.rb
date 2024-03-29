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

ActiveRecord::Schema[7.0].define(version: 2022_08_02_202802) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "lab_assistants", force: :cascade do |t|
    t.string "first_name"
    t.string "second_name"
    t.string "email"
    t.string "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "printers", force: :cascade do |t|
    t.string "name"
    t.integer "length"
    t.integer "height"
    t.integer "depth"
    t.string "state"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "printing_queues", force: :cascade do |t|
    t.bigint "printer_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["printer_id"], name: "index_printing_queues_on_printer_id"
  end

  create_table "printing_requests", force: :cascade do |t|
    t.bigint "student_id", null: false
    t.bigint "printing_queue_id", null: false
    t.bigint "lab_assistant_id", null: false
    t.integer "depth"
    t.integer "length"
    t.integer "height"
    t.string "course"
    t.text "comment"
    t.string "state"
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["lab_assistant_id"], name: "index_printing_requests_on_lab_assistant_id"
    t.index ["printing_queue_id"], name: "index_printing_requests_on_printing_queue_id"
    t.index ["student_id"], name: "index_printing_requests_on_student_id"
  end

  create_table "students", force: :cascade do |t|
    t.string "full_name"
    t.string "email"
    t.string "phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "printing_queues", "printers"
  add_foreign_key "printing_requests", "lab_assistants"
  add_foreign_key "printing_requests", "printing_queues"
  add_foreign_key "printing_requests", "students"
end
