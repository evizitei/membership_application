class ReformatHighschoolDateColums < ActiveRecord::Migration
  def self.up
    change_column :membership_applications, :high_school_graduation_date, :string
    change_column :membership_applications, :high_school_ged_date, :string
  end

  def self.down
    change_column :membership_applications, :high_school_graduation_date, :date
    change_column :membership_applications, :high_school_ged_date, :date
  end
end
