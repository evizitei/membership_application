class AddTrainingLocationsToMembershipApplications < ActiveRecord::Migration
  def self.up
    add_column :membership_applications, :training_location, :string
    add_column :membership_applications, :training_location_2, :string
  end

  def self.down
    remove_column :membership_applications, :training_location_2
    remove_column :membership_applications, :training_location
  end
end
