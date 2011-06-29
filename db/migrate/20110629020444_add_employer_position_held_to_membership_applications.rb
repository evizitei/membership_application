class AddEmployerPositionHeldToMembershipApplications < ActiveRecord::Migration
  def self.up
    add_column :membership_applications, :employer_position_held, :string
    add_column :membership_applications, :employer_position_held_2, :string
    add_column :membership_applications, :employer_position_held_3, :string
  end

  def self.down
    remove_column :membership_applications, :employer_position_held_3
    remove_column :membership_applications, :employer_position_held_2
    remove_column :membership_applications, :employer_position_held
  end
end
