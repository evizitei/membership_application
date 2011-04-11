class AddDefaultDiscountsToStateMapDatum < ActiveRecord::Migration
  def self.up
    add_column :state_map_data, :default_discounts, :boolean
  end

  def self.down
    remove_column :state_map_data, :default_discounts
  end
end
