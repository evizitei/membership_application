class AddPositionIdToMembershipApplications < ActiveRecord::Migration
  def self.up
    add_column :membership_applications, :position_id, :integer
  end

  def self.down
    remove_column :membership_applications, :position_id
  end
end
