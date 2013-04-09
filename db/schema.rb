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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130409020612) do

  create_table "borrowers", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "investments", :force => true do |t|
    t.integer  "lender_id"
    t.integer  "loan_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "lenders", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "loans", :force => true do |t|
    t.string   "loan_url"
    t.string   "title"
    t.date     "date_started"
    t.integer  "loan_duration_in_days"
    t.integer  "payment_cycle_in_days"
    t.float    "interest_in_percent"
    t.float    "loan_amount_in_btc"
    t.float    "amount_repaid_in_btc"
    t.float    "amount_due_in_btc"
    t.integer  "days_late"
    t.text     "loan_description_by_borrower"
    t.datetime "created_at",                   :null => false
    t.datetime "updated_at",                   :null => false
    t.integer  "borrower_id"
    t.string   "award_pdf"
  end

end
