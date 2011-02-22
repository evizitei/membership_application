class AddDriversLicenseClassToMembershipApplications < ActiveRecord::Migration
  def self.up
    add_column :membership_applications, :drivers_license_class, :string
  end

  def self.down
    remove_column :membership_applications, :drivers_license_class
  end
end
