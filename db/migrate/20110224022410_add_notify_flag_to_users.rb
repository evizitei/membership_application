class AddNotifyFlagToUsers < ActiveRecord::Migration
  def self.up
    add_column :users, :notify_of_new_apps, :boolean
  end

  def self.down
    remove_column :users, :notify_of_new_apps
  end
end
