class AddCollegeInfoToMembershipApplications < ActiveRecord::Migration
  def self.up
    add_column :membership_applications,:college_name,:string
    add_column :membership_applications,:college_location,:string
    add_column :membership_applications,:college_start_date,:date
    add_column :membership_applications,:college_stop_date,:date
    add_column :membership_applications,:college_units_completed,:string
    add_column :membership_applications,:college_major,:string
    add_column :membership_applications,:college_degree,:string
    add_column :membership_applications,:college_year,:string
    add_column :membership_applications,:college_name_2,:string
    add_column :membership_applications,:college_location_2,:string
    add_column :membership_applications,:college_start_date_2,:date
    add_column :membership_applications,:college_stop_date_2,:date
    add_column :membership_applications,:college_units_completed_2,:string
    add_column :membership_applications,:college_major_2,:string
    add_column :membership_applications,:college_degree_2,:string
    add_column :membership_applications,:college_year_2,:string
    add_column :membership_applications,:college_name_3,:string
    add_column :membership_applications,:college_location_3,:string
    add_column :membership_applications,:college_start_date_3,:date
    add_column :membership_applications,:college_stop_date_3,:date
    add_column :membership_applications,:college_units_completed_3,:string
    add_column :membership_applications,:college_major_3,:string
    add_column :membership_applications,:college_degree_3,:string
    add_column :membership_applications,:college_year_3,:string
  end

  def self.down
    remove_column :membership_applications,:college_name,:string
    remove_column :membership_applications,:college_location,:string
    remove_column :membership_applications,:college_start_date,:date
    remove_column :membership_applications,:college_stop_date,:date
    remove_column :membership_applications,:college_units_completed,:string
    remove_column :membership_applications,:college_major,:string
    remove_column :membership_applications,:college_degree,:string
    remove_column :membership_applications,:college_year,:string
    remove_column :membership_applications,:college_name_2,:string
    remove_column :membership_applications,:college_location_2,:string
    remove_column :membership_applications,:college_start_date_2,:date
    remove_column :membership_applications,:college_stop_date_2,:date
    remove_column :membership_applications,:college_units_completed_2,:string
    remove_column :membership_applications,:college_major_2,:string
    remove_column :membership_applications,:college_degree_2,:string
    remove_column :membership_applications,:college_year_2,:string
    remove_column :membership_applications,:college_name_3,:string
    remove_column :membership_applications,:college_location_3,:string
    remove_column :membership_applications,:college_start_date_3,:date
    remove_column :membership_applications,:college_stop_date_3,:date
    remove_column :membership_applications,:college_units_completed_3,:string
    remove_column :membership_applications,:college_major_3,:string
    remove_column :membership_applications,:college_degree_3,:string
    remove_column :membership_applications,:college_year_3,:string
  end
end
