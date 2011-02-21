class AddPreviousFireFieldsToMembershipApplications < ActiveRecord::Migration
  def self.up
    add_column :membership_applications, :previous_fire_department, :string
    add_column :membership_applications, :previous_fire_city, :string
    add_column :membership_applications, :previous_fire_state, :string
    add_column :membership_applications, :previous_fire_phone, :string
    add_column :membership_applications, :previous_fire_rank, :string
    add_column :membership_applications, :previous_fire_years, :string
    add_column :membership_applications, :previous_fire_department_2, :string
    add_column :membership_applications, :previous_fire_city_2, :string
    add_column :membership_applications, :previous_fire_state_2, :string
    add_column :membership_applications, :previous_fire_phone_2, :string
    add_column :membership_applications, :previous_fire_rank_2, :string
    add_column :membership_applications, :previous_fire_years_2, :string
  end

  def self.down
    remove_column :membership_applications, :previous_fire_department
    remove_column :membership_applications, :previous_fire_city
    remove_column :membership_applications, :previous_fire_state
    remove_column :membership_applications, :previous_fire_phone
    remove_column :membership_applications, :previous_fire_rank
    remove_column :membership_applications, :previous_fire_years
    remove_column :membership_applications, :previous_fire_department_2
    remove_column :membership_applications, :previous_fire_city_2
    remove_column :membership_applications, :previous_fire_state_2
    remove_column :membership_applications, :previous_fire_phone_2
    remove_column :membership_applications, :previous_fire_rank_2
    remove_column :membership_applications, :previous_fire_years_2
  end
end
