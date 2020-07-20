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

ActiveRecord::Schema.define(version: 2020_07_20_232549) do

  create_table "exercides", force: :cascade do |t|
    t.string "name"
    t.integer "sets"
    t.integer "reps"
    t.integer "workout_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["workout_id"], name: "index_exercides_on_workout_id"
  end

  create_table "exercises", force: :cascade do |t|
    t.string "name"
    t.integer "sets"
    t.integer "reps"
    t.integer "workout_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["workout_id"], name: "index_exercises_on_workout_id"
  end

  create_table "workouts", force: :cascade do |t|
    t.datetime "date"
    t.string "workout"
    t.string "mood"
    t.string "length"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "exercides", "workouts"
  add_foreign_key "exercises", "workouts"
end
