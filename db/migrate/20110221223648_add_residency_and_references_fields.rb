class AddResidencyAndReferencesFields < ActiveRecord::Migration
  def self.up
    add_column :membership_applications, :interested_in_residency, :boolean
    add_column :membership_applications, :known_firefighter_name,:string
    add_column :membership_applications, :known_firefighter_station,:string
    add_column :membership_applications, :known_firefighter_name_2,:string
    add_column :membership_applications, :known_firefighter_station_2,:string
    add_column :membership_applications, :known_firefighter_name_3,:string
    add_column :membership_applications, :known_firefighter_station_3,:string
    add_column :membership_applications, :known_firefighter_name_4,:string
    add_column :membership_applications, :known_firefighter_station_4,:string
    add_column :membership_applications, :reference_name,:string
    add_column :membership_applications, :reference_phone,:string
    add_column :membership_applications, :reference_relationship,:string
    add_column :membership_applications, :reference_name_2,:string
    add_column :membership_applications, :reference_phone_2,:string
    add_column :membership_applications, :reference_relationship_2,:string
    add_column :membership_applications, :reference_name_3,:string
    add_column :membership_applications, :reference_phone_3,:string
    add_column :membership_applications, :reference_relationship_3,:string
    add_column :membership_applications, :reference_name_4,:string
    add_column :membership_applications, :reference_phone_4,:string
    add_column :membership_applications, :reference_relationship_4,:string
  end

  def self.down
    remove_column :membership_applications, :interested_in_residency, :boolean
    remove_column :membership_applications, :known_firefighter_name,:string
    remove_column :membership_applications, :known_firefighter_station,:string
    remove_column :membership_applications, :known_firefighter_name_2,:string
    remove_column :membership_applications, :known_firefighter_station_2,:string
    remove_column :membership_applications, :known_firefighter_name_3,:string
    remove_column :membership_applications, :known_firefighter_station_3,:string
    remove_column :membership_applications, :known_firefighter_name_4,:string
    remove_column :membership_applications, :known_firefighter_station_4,:string
    remove_column :membership_applications, :reference_name,:string
    remove_column :membership_applications, :reference_phone,:string
    remove_column :membership_applications, :reference_relationship,:string
    remove_column :membership_applications, :reference_name_2,:string
    remove_column :membership_applications, :reference_phone_2,:string
    remove_column :membership_applications, :reference_relationship_2,:string
    remove_column :membership_applications, :reference_name_3,:string
    remove_column :membership_applications, :reference_phone_3,:string
    remove_column :membership_applications, :reference_relationship_3,:string
    remove_column :membership_applications, :reference_name_4,:string
    remove_column :membership_applications, :reference_phone_4,:string
    remove_column :membership_applications, :reference_relationship_4,:string
  end
end
