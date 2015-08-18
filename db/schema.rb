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

ActiveRecord::Schema.define(version: 20150813133330) do

  create_table "answer_attributes", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "answer_id"
    t.integer  "like"
  end

  add_index "answer_attributes", ["answer_id"], name: "FK_answer_attributes_answers", using: :btree

  create_table "answer_statuses", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "answers", force: true do |t|
    t.text     "content"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
    t.integer  "question_id"
    t.integer  "answer_status_id"
  end

  add_index "answers", ["answer_status_id"], name: "index_answers_on_answer_status_id", using: :btree
  add_index "answers", ["created_at"], name: "created_at", using: :btree
  add_index "answers", ["question_id"], name: "FK_answers_questions", using: :btree
  add_index "answers", ["user_id"], name: "FK_answers_users", using: :btree

  create_table "disliked_answers", force: true do |t|
    t.integer  "answer_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "disliked_answers", ["answer_id"], name: "index_disliked_answers_on_answer_id", using: :btree
  add_index "disliked_answers", ["user_id"], name: "index_disliked_answers_on_user_id", using: :btree

  create_table "liked_answers", force: true do |t|
    t.integer  "answer_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "liked_answers", ["answer_id"], name: "index_liked_answers_on_answer_id", using: :btree
  add_index "liked_answers", ["user_id"], name: "index_liked_answers_on_user_id", using: :btree

  create_table "question_statuses", force: true do |t|
    t.string   "name",       null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "question_statuses", ["name"], name: "name", unique: true, using: :btree

  create_table "questions", force: true do |t|
    t.string   "title",                          null: false
    t.text     "content",                        null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id",                        null: false
    t.integer  "question_status_id", default: 1, null: false
    t.integer  "has_best_answer",    default: 0, null: false
  end

  add_index "questions", ["created_at"], name: "created_at", using: :btree
  add_index "questions", ["question_status_id"], name: "index_questions_on_question_status_id", using: :btree
  add_index "questions", ["user_id"], name: "FK_questions_users", using: :btree

  create_table "users", force: true do |t|
    t.string   "firstname"
    t.string   "lastname"
    t.string   "username"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "password_digest"
    t.integer  "api_key"
  end

  add_index "users", ["api_key"], name: "api_key", unique: true, using: :btree
  add_index "users", ["email"], name: "email", unique: true, using: :btree
  add_index "users", ["username"], name: "username", unique: true, using: :btree

end
