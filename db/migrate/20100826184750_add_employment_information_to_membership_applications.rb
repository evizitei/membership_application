class AddEmploymentInformationToMembershipApplications < ActiveRecord::Migration
  def self.up
    add_column :membership_applications,:employer_name,:string
    add_column :membership_applications,:employer_name_2,:string
    add_column :membership_applications,:employer_name_3,:string
    add_column :membership_applications,:employer_phone,:string
    add_column :membership_applications,:employer_phone_2,:string
    add_column :membership_applications,:employer_phone_3,:string
    add_column :membership_applications,:employer_start,:date
    add_column :membership_applications,:employer_start_2,:date
    add_column :membership_applications,:employer_start_3,:date
    add_column :membership_applications,:employer_stop,:date
    add_column :membership_applications,:employer_stop_2,:date
    add_column :membership_applications,:employer_stop_3,:date
    add_column :membership_applications,:employer_exit_reason,:text
    add_column :membership_applications,:employer_exit_reason_2,:text
    add_column :membership_applications,:employer_exit_reason_3,:text
  end

  def self.down
    remove_column :membership_applications,:employer_name,:string
    remove_column :membership_applications,:employer_name_2,:string
    remove_column :membership_applications,:employer_name_3,:string
    remove_column :membership_applications,:employer_phone,:string
    remove_column :membership_applications,:employer_phone_2,:string
    remove_column :membership_applications,:employer_phone_3,:string
    remove_column :membership_applications,:employer_start,:date
    remove_column :membership_applications,:employer_start_2,:date
    remove_column :membership_applications,:employer_start_3,:date
    remove_column :membership_applications,:employer_stop,:date
    remove_column :membership_applications,:employer_stop_2,:date
    remove_column :membership_applications,:employer_stop_3,:date
    remove_column :membership_applications,:employer_exit_reason,:text
    remove_column :membership_applications,:employer_exit_reason_2,:text
    remove_column :membership_applications,:employer_exit_reason_3,:text
  end
end
