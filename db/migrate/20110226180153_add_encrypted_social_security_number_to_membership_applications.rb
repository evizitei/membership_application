class AddEncryptedSocialSecurityNumberToMembershipApplications < ActiveRecord::Migration
  def self.up
    add_column :membership_applications, :encrypted_social_security_number, :string
  end

  def self.down
    remove_column :membership_applications, :encrypted_social_security_number
  end
end
