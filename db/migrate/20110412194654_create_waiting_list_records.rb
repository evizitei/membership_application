class CreateWaitingListRecords < ActiveRecord::Migration
  def self.up
    create_table :waiting_list_records do |t|
      t.string :email
      t.integer :position_id

      t.timestamps
    end
  end

  def self.down
    drop_table :waiting_list_records
  end
end
