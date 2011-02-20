class AddProcessingStatusToMembershipApplications < ActiveRecord::Migration
  def self.up
    rename_column :membership_applications, :state, :address_state
    add_column :membership_applications, :state, :string
  end

  def self.down
    remove_column :membership_applications, :state
    rename_column :membership_applications, :address_state, :state
  end
end
