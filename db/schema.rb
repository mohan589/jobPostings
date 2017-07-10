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

ActiveRecord::Schema.define(version: 20170710142807) do

  create_table "business_streams", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "companies", force: :cascade do |t|
    t.string   "name"
    t.text     "profile_description"
    t.integer  "business_stream_id"
    t.string   "website_url"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  create_table "education_details", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "cerficate_degree_name"
    t.string   "major"
    t.string   "institute_university_name"
    t.date     "starting_date"
    t.date     "completion"
    t.integer  "percentage"
    t.integer  "grade"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "experience_details", force: :cascade do |t|
    t.integer  "user_id"
    t.boolean  "is_current_job"
    t.date     "start_date"
    t.date     "end_date"
    t.string   "job_title"
    t.string   "company_name"
    t.string   "job_location_city"
    t.string   "job_location_state"
    t.string   "job_location_country"
    t.text     "description"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "job_locations", force: :cascade do |t|
    t.text     "street_address"
    t.string   "city"
    t.string   "state"
    t.string   "country"
    t.string   "zip"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "job_post_activities", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "job_post_id"
    t.datetime "apply_date"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "job_post_skill_sets", force: :cascade do |t|
    t.integer  "skill_set_id"
    t.integer  "job_post_id"
    t.integer  "skill_level"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "job_posts", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "job_type_id"
    t.integer  "company_id"
    t.boolean  "is_company_name_hidden"
    t.text     "job_description"
    t.integer  "job_location_id"
    t.boolean  "is_active"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.string   "job_title"
    t.string   "exp_required"
  end

  create_table "job_types", force: :cascade do |t|
    t.string   "job_type_name"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "seeker_profiles", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "first_name"
    t.string   "last_name"
    t.integer  "current_salary"
    t.boolean  "is_annualy_monthly"
    t.string   "currency"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "seeker_skill_sets", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "skill_set_id"
    t.integer  "skill_level"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "skill_sets", force: :cascade do |t|
    t.string   "skill_set_name"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "user_types", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                     default: "", null: false
    t.string   "encrypted_password",        default: "", null: false
    t.integer  "user_type_id"
    t.datetime "date_of_birth"
    t.boolean  "gender"
    t.boolean  "is_active"
    t.string   "contact_number"
    t.boolean  "sms_notification_active"
    t.boolean  "email_notification_active"
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",             default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["user_type_id"], name: "index_users_on_user_type_id"
  end

end
