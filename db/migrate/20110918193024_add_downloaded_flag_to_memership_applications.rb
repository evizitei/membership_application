class AddDownloadedFlagToMemershipApplications < ActiveRecord::Migration
  def self.up
    add_column :membership_applications, :downloaded, :boolean
  end

  def self.down
    remove_column :membership_applications, :downloaded
  end
end
