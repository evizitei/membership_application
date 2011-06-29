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

ActiveRecord::Schema.define(:version => 20110629020444) do

  create_table "delayed_jobs", :force => true do |t|
    t.integer  "priority",   :default => 0
    t.integer  "attempts",   :default => 0
    t.text     "handler"
    t.text     "last_error"
    t.datetime "run_at"
    t.datetime "locked_at"
    t.datetime "failed_at"
    t.text     "locked_by"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "membership_applications", :force => true do |t|
    t.string   "last_name"
    t.string   "first_name"
    t.string   "middle_initial"
    t.string   "social_security_number"
    t.string   "address"
    t.string   "city"
    t.string   "address_state"
    t.string   "zip"
    t.string   "phone_number"
    t.string   "phone_number_2"
    t.string   "email"
    t.boolean  "may_contact_at_work"
    t.date     "birth_date"
    t.boolean  "has_been_employed_under_alias"
    t.text     "aliases"
    t.string   "drivers_license_number"
    t.string   "drivers_license_state"
    t.date     "drivers_license_expiration_date"
    t.boolean  "has_crime_convictions"
    t.text     "crime_details"
    t.string   "has_traffic_violations"
    t.text     "traffic_violations_details"
    t.string   "military_branch"
    t.string   "military_rank"
    t.date     "military_start_date"
    t.date     "military_discharge_date"
    t.text     "military_training"
    t.string   "high_school_name"
    t.string   "high_school_city"
    t.string   "high_school_state"
    t.date     "high_school_graduation_date"
    t.date     "high_school_ged_date"
    t.text     "any_additional_details"
    t.boolean  "is_interested_in_residency"
    t.boolean  "has_fire_experience"
    t.string   "prior_department_name"
    t.string   "prior_department_city"
    t.string   "prior_department_state"
    t.string   "known_member_1_name"
    t.string   "known_member_1_station"
    t.string   "known_member_2_name"
    t.string   "known_member_2_station"
    t.string   "known_member_3_name"
    t.string   "known_member_3_station"
    t.string   "known_member_4_name"
    t.string   "known_member_4_station"
    t.text     "reason_for_joining"
    t.boolean  "agreed_to_conditions"
    t.date     "date_agreed_to_conditions"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "employer_name"
    t.string   "employer_name_2"
    t.string   "employer_name_3"
    t.string   "employer_phone"
    t.string   "employer_phone_2"
    t.string   "employer_phone_3"
    t.date     "employer_start"
    t.date     "employer_start_2"
    t.date     "employer_start_3"
    t.date     "employer_stop"
    t.date     "employer_stop_2"
    t.date     "employer_stop_3"
    t.text     "employer_exit_reason"
    t.text     "employer_exit_reason_2"
    t.text     "employer_exit_reason_3"
    t.string   "college_name"
    t.string   "college_location"
    t.date     "college_start_date"
    t.date     "college_stop_date"
    t.string   "college_units_completed"
    t.string   "college_major"
    t.string   "college_degree"
    t.string   "college_year"
    t.string   "college_name_2"
    t.string   "college_location_2"
    t.date     "college_start_date_2"
    t.date     "college_stop_date_2"
    t.string   "college_units_completed_2"
    t.string   "college_major_2"
    t.string   "college_degree_2"
    t.string   "college_year_2"
    t.string   "college_name_3"
    t.string   "college_location_3"
    t.date     "college_start_date_3"
    t.date     "college_stop_date_3"
    t.string   "college_units_completed_3"
    t.string   "college_major_3"
    t.string   "college_degree_3"
    t.string   "college_year_3"
    t.string   "training_institution"
    t.string   "training_course"
    t.date     "training_start_date"
    t.date     "training_stop_date"
    t.integer  "training_hours"
    t.string   "training_institution_2"
    t.string   "training_course_2"
    t.date     "training_start_date_2"
    t.date     "training_stop_date_2"
    t.integer  "training_hours_2"
    t.string   "certification_name"
    t.string   "certification_number"
    t.string   "certification_issuer"
    t.date     "certification_expiration"
    t.string   "certification_name_2"
    t.string   "certification_number_2"
    t.string   "certification_issuer_2"
    t.date     "certification_expiration_2"
    t.string   "certification_name_3"
    t.string   "certification_number_3"
    t.string   "certification_issuer_3"
    t.date     "certification_expiration_3"
    t.integer  "position_id"
    t.string   "state"
    t.string   "previous_fire_department"
    t.string   "previous_fire_city"
    t.string   "previous_fire_state"
    t.string   "previous_fire_phone"
    t.string   "previous_fire_rank"
    t.string   "previous_fire_years"
    t.string   "previous_fire_department_2"
    t.string   "previous_fire_city_2"
    t.string   "previous_fire_state_2"
    t.string   "previous_fire_phone_2"
    t.string   "previous_fire_rank_2"
    t.string   "previous_fire_years_2"
    t.boolean  "interested_in_residency"
    t.string   "known_firefighter_name"
    t.string   "known_firefighter_station"
    t.string   "known_firefighter_name_2"
    t.string   "known_firefighter_station_2"
    t.string   "known_firefighter_name_3"
    t.string   "known_firefighter_station_3"
    t.string   "known_firefighter_name_4"
    t.string   "known_firefighter_station_4"
    t.string   "reference_name"
    t.string   "reference_phone"
    t.string   "reference_relationship"
    t.string   "reference_name_2"
    t.string   "reference_phone_2"
    t.string   "reference_relationship_2"
    t.string   "reference_name_3"
    t.string   "reference_phone_3"
    t.string   "reference_relationship_3"
    t.string   "reference_name_4"
    t.string   "reference_phone_4"
    t.string   "reference_relationship_4"
    t.string   "drivers_license_class"
    t.string   "encrypted_social_security_number"
    t.string   "printable_pdf_file_name"
    t.string   "printable_pdf_content_type"
    t.integer  "printable_pdf_file_size"
    t.datetime "printable_pdf_updated_at"
    t.string   "employer_position_held"
    t.string   "employer_position_held_2"
    t.string   "employer_position_held_3"
  end

  create_table "positions", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.boolean  "active"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "skills", :force => true do |t|
    t.string   "name"
    t.integer  "position_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "email",                               :default => "", :null => false
    t.string   "encrypted_password",   :limit => 128, :default => "", :null => false
    t.string   "password_salt",                       :default => "", :null => false
    t.string   "reset_password_token"
    t.string   "remember_token"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                       :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "notify_of_new_apps"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

  create_table "waiting_list_records", :force => true do |t|
    t.string   "email"
    t.integer  "position_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
