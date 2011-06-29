class AddLocationOfEmployerToMembershipApplications < ActiveRecord::Migration
  def self.up
    add_column :membership_applications, :employer_location, :string
    add_column :membership_applications, :employer_location_2, :string
    add_column :membership_applications, :employer_location_3, :string
  end

  def self.down
    remove_column :membership_applications, :employer_location_3
    remove_column :membership_applications, :employer_location_2
    remove_column :membership_applications, :employer_location
  end
end
