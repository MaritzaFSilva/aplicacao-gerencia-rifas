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

ActiveRecord::Schema.define(version: 2021_03_29_223615) do

  create_table "awards", force: :cascade do |t|
    t.integer "rifa_id_id", null: false
    t.string "description"
    t.integer "placing"
    t.integer "ticket_drawn_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["rifa_id_id"], name: "index_awards_on_rifa_id_id"
    t.index ["ticket_drawn_id"], name: "index_awards_on_ticket_drawn_id"
  end

  create_table "raffles", force: :cascade do |t|
    t.integer "user_id_id", null: false
    t.integer "type_id_id", null: false
    t.string "title"
    t.text "description"
    t.datetime "probable_draw_date"
    t.datetime "sale_start_date"
    t.datetime "sale_end_date"
    t.datetime "draw_date"
    t.float "ticket_value"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["type_id_id"], name: "index_raffles_on_type_id_id"
    t.index ["user_id_id"], name: "index_raffles_on_user_id_id"
  end

  create_table "tickets", force: :cascade do |t|
    t.integer "rifa_id_id", null: false
    t.integer "user_id_id"
    t.integer "number"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["rifa_id_id"], name: "index_tickets_on_rifa_id_id"
    t.index ["user_id_id"], name: "index_tickets_on_user_id_id"
  end

  create_table "types", force: :cascade do |t|
    t.string "description"
    t.integer "initial_number"
    t.integer "step"
    t.integer "number_of_tickets"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "senha"
    t.text "foto"
    t.boolean "admin"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "awards", "rifa_ids"
  add_foreign_key "awards", "ticket_drawns"
  add_foreign_key "raffles", "type_ids"
  add_foreign_key "raffles", "user_ids"
  add_foreign_key "tickets", "rifa_ids"
  add_foreign_key "tickets", "user_ids"
end
