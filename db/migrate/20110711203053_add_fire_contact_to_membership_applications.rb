class AddFireContactToMembershipApplications < ActiveRecord::Migration
  def self.up
    add_column :membership_applications, :previous_fire_contact_name, :string
    add_column :membership_applications, :previous_fire_contact_name_2, :string
    add_column :membership_applications, :previous_fire_contact_phone, :string
    add_column :membership_applications, :previous_fire_contact_phone_2, :string
  end

  def self.down
    remove_column :membership_applications, :previous_fire_contact_phone_2
    remove_column :membership_applications, :previous_fire_contact_phone
    remove_column :membership_applications, :previous_fire_contact_name_2
    remove_column :membership_applications, :previous_fire_contact_name
  end
end
