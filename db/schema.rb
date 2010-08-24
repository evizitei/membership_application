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

ActiveRecord::Schema.define(:version => 20100824195449) do

  create_table "membership_applications", :force => true do |t|
    t.string   "last_name"
    t.string   "first_name"
    t.string   "middle_initial"
    t.string   "social_security_number"
    t.string   "address"
    t.string   "city"
    t.string   "state"
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
  end

end
