class AddSpecialTrainingToMembershipApplications < ActiveRecord::Migration
  def self.up
    add_column :membership_applications,:training_institution,:string
    add_column :membership_applications,:training_course,:string
    add_column :membership_applications,:training_start_date,:date
    add_column :membership_applications,:training_stop_date,:date
    add_column :membership_applications,:training_hours,:integer
    add_column :membership_applications,:training_institution_2,:string
    add_column :membership_applications,:training_course_2,:string
    add_column :membership_applications,:training_start_date_2,:date
    add_column :membership_applications,:training_stop_date_2,:date
    add_column :membership_applications,:training_hours_2,:integer
    add_column :membership_applications,:certification_name,:string
    add_column :membership_applications,:certification_number,:string
    add_column :membership_applications,:certification_issuer,:string
    add_column :membership_applications,:certification_expiration,:date
    add_column :membership_applications,:certification_name_2,:string
    add_column :membership_applications,:certification_number_2,:string
    add_column :membership_applications,:certification_issuer_2,:string
    add_column :membership_applications,:certification_expiration_2,:date
    add_column :membership_applications,:certification_name_3,:string
    add_column :membership_applications,:certification_number_3,:string
    add_column :membership_applications,:certification_issuer_3,:string
    add_column :membership_applications,:certification_expiration_3,:date
  end

  def self.down
    remove_column :membership_applications,:training_institution,:string
    remove_column :membership_applications,:training_course,:string
    remove_column :membership_applications,:training_start_date,:date
    remove_column :membership_applications,:training_stop_date,:date
    remove_column :membership_applications,:training_hours,:integer
    remove_column :membership_applications,:training_institution_2,:string
    remove_column :membership_applications,:training_course_2,:string
    remove_column :membership_applications,:training_start_date_2,:date
    remove_column :membership_applications,:training_stop_date_2,:date
    remove_column :membership_applications,:training_hours_2,:integer
    remove_column :membership_applications,:certification_name,:string
    remove_column :membership_applications,:certification_number,:string
    remove_column :membership_applications,:certification_issuer,:string
    remove_column :membership_applications,:certification_expiration,:date
    remove_column :membership_applications,:certification_name_2,:string
    remove_column :membership_applications,:certification_number_2,:string
    remove_column :membership_applications,:certification_issuer_2,:string
    remove_column :membership_applications,:certification_expiration_2,:date
    remove_column :membership_applications,:certification_name_3,:string
    remove_column :membership_applications,:certification_number_3,:string
    remove_column :membership_applications,:certification_issuer_3,:string
    remove_column :membership_applications,:certification_expiration_3,:date
  end
end
